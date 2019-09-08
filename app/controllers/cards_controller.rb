# frozen_string_literal: true

class CardsController < ApplicationController
  helper_method :sets

  def draft
    @current_set = (params[:set_id] || '1').to_i
    sets = (1..4).map { |_| @current_set }
    @cards = Card.generate_pack(@current_set)
    @heroes = Card.heroes(sets.uniq)
  end

  def show_cards
    sets = params[:set].map(&:to_i)
    @cards = init_generator(sets)
    @heroes = Card.heroes(sets.uniq)
  end

  def sets
    { 'Время героев' => 1, 'Сила и честь' => 2, 'Повелители стихий' => 3, 'Восхождение тени' => 4,
      'Рожденные бурей' => 5, 'Грехи прошлого' => 6, 'Расцвет технологий' => 7,
      'Цена прогресса' => 8 }
  end
end
