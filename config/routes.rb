Rails.application.routes.draw do
  devise_for :users
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/edit/:id" => "posts#edit"
  post "posts/update/:id" => "posts#update"
  get "posts/delete/:id" => "posts#delete"
  get "mypage/index" => "mypage#index"
  get "mypage/update" => "mypage#to_index"
  post "mypage/update" => "mypage#update"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "index#index"
end
