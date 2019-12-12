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
    {
      1 => 'Время героев',
      2 => 'Сила и честь',
      3 => 'Повелители стихий',
      4 => 'Восхождение тени',
      5 => 'Рожденные бурей',
      6 => 'Грехи прошлого',
      7 => 'Расцвет технологий',
      8 => 'Цена прогресса',
      9 => 'Черные паруса'
    }
  end
end
