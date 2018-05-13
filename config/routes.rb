Rails.application.routes.draw do	
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
	root to: "books#index"
	# root to: "categories#index"
	resources :categories
	resources :books do
    post :publish
  end
	devise_for :users
end
