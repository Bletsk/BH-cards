# frozen_string_literal: true

class CardParserController < ApplicationController
  def index
    response = HTTP.post('http://berserk.ru',
                         params: { route: 'lib/feed/cards' },
                         json: { state: {
                           results_per_page: 1507,
                           sort: 'name',
                           order: 'DESC'
                         } })
    raw_data = JSON.parse(response)['rendered'].split(' ' * 4).reject(&:empty?)
    urls = raw_data.map { |v| v.match(/\"(?<url>\S+\d)\"/)['url'] }

    cards = []

    # urls.each do |url|
    0.upto(5) do |i|
      page = Nokogiri::HTML(HTTP.get(urls[i]).to_s)
      id = urls[i].match(/\d+/)[0].to_i
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
      cost = cost[cost_index + 11..cost_index + 11].to_i

      set = page.css('.col-md-2 p a').inner_html
      set = set[8..set.length - 1]

      # todo
      cards.push(id: id, title: title, image: image, rarity: rarity, cost: cost, set: set)
    end

    render json: cards
  end
end
