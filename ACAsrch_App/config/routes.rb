Rails.application.routes.draw do
  devise_for :users

  root 'searches#index'


  #get 'reviews/index'

  get 'reviews/new'

  get 'reviews/show'

  

  get 'searches/new'

  get 'searches/result', to: 'searches#result'
  #get '/search', to: 'searches#result'

  get 'searches/about'

  resources :searches
  resources :reviews

end
