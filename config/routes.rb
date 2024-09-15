Rails.application.routes.draw do
 root 'homes#top'
 resources :books

 post 'books'=>'books#create'
 get 'books/:id'=>'books#show'
 get 'books/:id'=>'books#edit'
 patch 'books/:id'=>'books#update'

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
