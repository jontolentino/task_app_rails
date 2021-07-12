Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: 'categories#index'
  root to: 'pages#index', as: 'pages_index'

  # resources :categories do
  #   resources :tasks
  # end

  get '/categories' => 'categories#index', as: 'categories_index'
  get '/:slug' => 'categories#show', as: 'categories_show'
  get '/:slug/:id' => 'tasks#show_id', as: 'tasks_show_id'
  # get '/:slug/:id' => 'categories#show_id', as: 'categories_show_id'
  patch '/:slug/:id' => 'tasks#update', as: 'task_updating'


end
