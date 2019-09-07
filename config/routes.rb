# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'cards#draft'

  get '/draft/:set_id', to: 'cards#draft', as: 'draft'
  get '/cards/generate_cards', to: 'cards#show_cards', as: 'generate'
end
