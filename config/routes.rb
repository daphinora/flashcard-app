Rails.application.routes.draw do
  # resources :card_collections
  resources :collections, only: [:index, :show, :new] 
  # resources :tagged_cards
  # resources :tags
  # resources :user_cards
  resources :flashcards, only: [:index, :show, :new, :edit]
  resources :users, only: [:index, :show, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
