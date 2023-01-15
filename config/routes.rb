Rails.application.routes.draw do
  get 'index/index'
  devise_for :users
  # get "URL" => "コントローラー名#アクション名"
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/edit/:id" => "posts#edit"
  post "posts/update/:id" => "posts#update"
  get "posts/delete/:id" => "posts#delete"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "index#index"
end
