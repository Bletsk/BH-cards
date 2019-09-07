Rails.application.routes.draw do
	root :to => "cards#index"

	namespace :api do
		namespace :v1 do
			resources :users, only: %i(show)

			post '/draft/generate', to: 'draft#generate_packs', as: 'generate'
		end
	end

	resources :builder, only: %i(index)
end
