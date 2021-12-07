Rails.application.routes.draw do
resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'homes/new'
  get 'top' => 'homes#top'
  post 'homes' => 'homes#create'
  get 'new'=>'books#new'
  get 'books/:id' => 'books#show', as: 'book_params'
  root :to => 'homes#top'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
