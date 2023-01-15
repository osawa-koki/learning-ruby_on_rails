Rails.application.routes.draw do
  # get "URL" => "コントローラー名#アクション名"
  get "posts/index" => "posts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
