Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'categories#index'
  # resources :categories do
  #   resources :tasks
  # end

  get '/categories' => 'categories#index', as: 'categories_index'
  # get '/all' => 'categories#index', as: 'categories_index_all'
  get '/:slug' => 'categories#show', as: 'categories_show'

end
