Rails.application.routes.draw do

  resources :books


  root to: 'homes#top'
  post'books' => 'books#creste'
  get 'books' => 'books#index'
  # get 'books' => 'books#'
  delete 'books/:id' => 'books#destroy' , as: 'destroy_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
