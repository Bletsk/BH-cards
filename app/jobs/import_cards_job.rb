# frozen_string_literal: true

class ImportCardsJob < ApplicationJob
  SETS = { 1 => 86_886, 2 => 91_064, 3 => 94_104, 4 => 94_105, 5 => 94_106,
           6 => 94_108, 7 => 94_111, 8 => 94_116 }.freeze
  PER_PAGE = 50

  queue_as :default

  def perform
    current_page = 1
    cards = []

    loop do
      response = HTTP.post('https://berserk.ru',
                           params: { route: 'lib/feed/cards' },
                           json: { state: {
                             results_per_page: PER_PAGE,
                             page: current_page,
                             sort: 'name',
                             order: 'DESC',
                             set: SETS[1]
                           } })

      raw_data = JSON.parse(response)['rendered'].split(' ' * 4).reject(&:empty?)
      urls = raw_data.map { |v| v.match(/\"(?<url>\S+\d)\"/)['url'] }
      current_page += 1

      cards += urls.map do |url|
        begin
          page = Nokogiri::HTML(HTTP.get(url).to_s)
          id = url.match(/\d+/)[0].to_i
          title = page.css('.desc-title h2').inner_html
          image = page.css('.card .image img').attr('src').inner_html
          rarity = page.css('.rarity').inner_html
          if rarity.include?('Частая')
            rarity = 'common'
          elsif rarity.include?('Необычная')
            rarity = 'uncommon'
          elsif rarity.include?('Редкая')
            rarity = 'rare'
          elsif rarity.include?('Ультраредкая')
            rarity = 'ultra'
          end

          cost = page.css('.col-md-2 p').inner_html
          cost_index = cost.index('Стоимость')
          cost = cost[cost_index + 11..cost_index + 11].to_i if cost_index

          { id: id, title: title, image: image, rarity: rarity.to_sym, cost: cost }
        rescue StandardError => e
          puts "Error parsing:\n#{url}\n#{e}"
          nil
        end
      end
      break if urls.length < PER_PAGE
    end

    puts cards.first
    puts cards.length
  end
end
