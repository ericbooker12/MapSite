Rails.application.routes.draw do
  get 'projects/index'
  get 'projects/new'
  get 'projects/show'
  get 'projects/create'
  get 'projects/edit'
  get 'projects/update'
  get 'projects/delete'
  get 'projects/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
