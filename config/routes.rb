Rails.application.routes.draw do

  resources :books


  root to: 'homes#top'
  post'books' => 'books#creste'
  get 'books' => 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
