# frozen_string_literal: true

deck = Deck.create(name: 'Sample deck')
Card.first(15).each do |card|
  deck.deck_cards.create(card: card, amount: 3)
end
