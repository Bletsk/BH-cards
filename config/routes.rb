Rails.application.routes.draw do
	root :to => "cards#index"

	namespace :api do
		namespace :v1 do
			resources :users, only: %i(show)

			post '/draft/generate', to: 'draft#generate_packs', as: 'generate'
		end
	end
	# resources :cards, only: [:index]
	# get '/cards/generate_cards', to: 'cards#show_cards', as: "generate"
	get '/derp' => "card_parser#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
