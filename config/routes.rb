Rails.application.routes.draw do
 
  get 'sessions/new'
  get 'static_page/home'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  # resources :card_collections
  resources :collections
  # resources :tagged_cards
  # resources :tags
  # resources :user_cards
  resources :flashcards
  resources :users
  # , only: [:show, :new, :edit, :create, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
