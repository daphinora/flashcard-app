Rails.application.routes.draw do
 
  get 'static_page/home'
  get 'sessions/new'
  get 'static_pages/home'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  # resources :card_collections
  resources :collections, only: [:index, :show, :new] 
  # resources :tagged_cards
  # resources :tags
  # resources :user_cards
  resources :flashcards, only: [:index, :show, :new, :edit]
  resources :users
  # , only: [:show, :new, :edit, :create, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
