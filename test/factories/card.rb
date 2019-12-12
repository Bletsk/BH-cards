# frozen_string_literal: true

FactoryBot.define do
  factory :card do
    name { 'card name' }
    rarity { :common }
    card_set { 8 }
    faction { :neutral }
    cost { 1 }
    site_id { 1 }
  end
end
