Rails.application.routes.draw do
  resources :currencies do
  	member do
  		post :update_data
  	end
  end

  root "currencies#index"
end
