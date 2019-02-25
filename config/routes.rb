Rails.application.routes.draw do

	root 'projects#index'

	get 'projects/index'
	get 'projects/show'
	get 'projects/update'
	get 'projects/new'
	get 'projects/delete'


  resources :projects do
  	member do
  		get :delete
  	end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
