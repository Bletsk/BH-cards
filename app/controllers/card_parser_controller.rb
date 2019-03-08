class CardParserController < ApplicationController
	def index
		response = HTTP.post("http://berserk.ru", params: {route: "lib/feed/cards"}, json: {state: {results_per_page: 50, page: 1, sort: "name", order: "DESC"}})
		raw_data = JSON.parse(response)["rendered"].split(' ' * 4).reject(&:empty?)
		urls = raw_data.map { |v| v.match(/\"(?<url>\S+\d)\"/)["url"] }

		cards = []

		#urls.each do |url|
		0.upto(30) do |i|
		    page = Nokogiri::HTML(HTTP.get(urls[i]).to_s)
				card_description = page.css(".description")
				data_rows = card_description.css('p')

				cards << {
					title: get_title(card_description),
					flavor_text: get_flavor_text(data_rows),
					rarity: get_rarity(data_rows),
					card_set: get_set_name(data_rows),
					number: get_number_in_set(data_rows),
					artist: get_artist_name(data_rows),
					cost: get_cost(data_rows),
					attack: get_attack(data_rows),
					health: get_health(data_rows)
				}
		end

		render json: cards
	end

	def get_title (desc)
		desc.css('h2').inner_html
	end

	def get_flavor_text (data_rows)
		data_rows[0].css('em').inner_html
	rescue
		p "Something wrong\n#{data_rows}"
		'unknown'
	end

	def get_rarity (data_rows)
		data_rows[1].inner_html.split('Редкость:').second.split("\n").first.strip
	rescue
		p "Something wrong\n#{data_rows}"
		'unknown'
	end

	def get_set_name (data_rows)
		data_rows[2].css('a').inner_html.split('Выпуск:').second.strip
	rescue
		p "Something wrong\n#{data_rows}"
		'unknown'
	end

	def get_number_in_set (data_rows)
		data_rows[3].inner_html.split('Номер:').second.strip.to_i
	rescue
		p "Something wrong\n#{data_rows}"
		'unknown'
	end

	def get_artist_name (data_rows)
		data_rows[4].css('a').inner_html.gsub("\n", '').strip
	rescue
		p "Something wrong\n#{data_rows}"
		'unknown'
	end

	def get_faction (data_rows)
		data_rows[5].inner_html.split('Стихия:').second.gsub("\n", '').strip
	rescue
		p "Something wrong\n#{data_rows}"
		'unknown'
	end

	def get_cost (data_rows)
		data_rows[6].inner_html.gsub('Стоимость:', '').strip
	rescue
		p "Something wrong\n#{data_rows}"
		'unknown'
	end

	def get_health (data_rows)
		data_rows[7].inner_html.gsub('Здоровье:', '').strip
	rescue
		p "Something wrong\n#{data_rows}"
		'unknown'
	end

	def get_attack (data_rows)
		data_rows[8].inner_html.gsub('Простой удар:', '').strip
	rescue
		p "Something wrong\n#{data_rows}"
		'unknown'
	end
end
