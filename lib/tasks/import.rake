# frozen_string_literal: true

namespace :import do
  desc 'imports stuff from Berserk.ru'
  task :cards_from_set, [:set_number] => [:environment] do |_t, args|
    SETS = {
      1 => 86_886,
      2 => 91_064,
      3 => 94_104,
      4 => 94_105,
      5 => 94_107,
      6 => 94_108,
      7 => 94_115,
      8 => 94_116,
      9 => 94_117
    }.freeze
    PER_PAGE = 50
    IGNORED_CARDS = [
      'Элементаль праха',
      'Элементаль воды',
      'Элементаль воздуха',
      'Элементаль земли',
      'Элементаль огня',
      'Модуль атаки',
      'Модуль подавления',
      'Модуль подвижности',
      'Модуль поддержки',
      'Защитный модуль',
      'Чёрная метка',
      'Попутный ветер'
    ].freeze

    current_page = 1
    current_set = args[:set_number].to_i || 1

    loop do
      response = HTTP.post('https://berserk.ru',
                           params: { route: 'lib/feed/cards' },
                           json: { state: {
                             results_per_page: PER_PAGE,
                             page: current_page,
                             sort: 'name',
                             order: 'ASC',
                             set: SETS[current_set]
                           } })

      raw_data = JSON.parse(response)['rendered'].split(' ' * 4).reject(&:empty?)
      urls = raw_data.map { |v| v.match(/\"(?<url>\S+\d)\"/)['url'] }
      current_page += 1

      urls.each do |url|
        page = Nokogiri::HTML(HTTP.get(url).to_s)
        id = url.match(/\d+/)[0].to_i
        title = page.css('.desc-title h2').inner_html
        next if IGNORED_CARDS.include?(title)

        image = page.css('.card .image img').attr('src').inner_html
        rarity = page.css('.rarity').inner_html
        if rarity.include?('Частая')
          rarity = :common
        elsif rarity.include?('Необычная')
          rarity = :uncommon
        elsif rarity.include?('Редкая')
          rarity = :rare
        elsif rarity.include?('Ультраредкая')
          rarity = :ultra
        end

        cost_html = page.css('.col-md-2 p').inner_html
        cost_index = cost_html.index('Стоимость')
        cost = cost_html[cost_index + 11..cost_index + 11].to_i if cost_index

        faction_html = page.css('.col-md-2 p').inner_html
        faction = faction_html.split('Стихия:')[1].split[0]
        converted_faction = case faction
                            when 'Леса'
                              :forest
                            when 'Тьма'
                              :dark
                            when 'Болота'
                              :swamp
                            when 'Степи'
                              :plain
                            when 'Горы'
                              :mountain
                            when 'Нейтральная'
                              :neutral
                            end

        next if Card.exists?(site_id: id)

        card = Card.create!(
          title: title,
          card_url: image,
          site_id: id,
          rarity: rarity,
          cost: cost,
          faction: converted_faction,
          dropped_from_booster: cost.present? || rarity == :common,
          card_set: current_set
        )
        puts card.title
      rescue StandardError => e
        puts "Error parsing:\n#{url}\n#{e}"
      end
      break if urls.length < PER_PAGE
    end
  end
end
