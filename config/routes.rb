# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'deck_builder#index'

  get '/draft/:set_id', to: 'cards#draft', as: 'draft'

  namespace :api do
    namespace :v1 do
      get 'cards/index'
    end
  end

  get '/*path' => 'deck_builder#index'
end
