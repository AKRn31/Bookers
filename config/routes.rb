Rails.application.routes.draw do
  root "books#index"
  resources :books

  get 'books/new'
  post 'books'=>'books#create'
  get 'books/:id'=>'books#show'
  get 'books/:id'=>'books#edit'
  patch 'books/:id'=>'books#update'
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
