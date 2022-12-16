Rails.application.routes.draw do
  resources :students
  root to: 'pages#home'
  devise_for :users
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    get '/students', to: 'students#index'
    # get '/students', to: 'students#index'

  # root "articles#index"
end
