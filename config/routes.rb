Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'categories#index'
  # resources :categories do
  #   resources :tasks
  # end

  get '/categories' => 'categories#index', as: 'categories_index'
  get '/:slug' => 'categories#show', as: 'categories_show'
  get '/:slug/:id' => 'task#show_id', as: 'task_show_id'

end
