# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'cards#index'

  resources :cards, only: [:index]
  get '/cards/generate_cards', to: 'cards#show_cards', as: 'generate'
  get '/derp' => 'card_parser#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
