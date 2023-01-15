Rails.application.routes.draw do
  # get "URL" => "コントローラー名#アクション名"
  get 'greeting/sayhello'
  get 'greeting/saygoodmorning'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
