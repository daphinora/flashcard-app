Rails.application.routes.draw do
  resources :card_collections
  resources :collections
  resources :tagged_cards
  resources :tags
  resources :user_cards
  resources :flashcards
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
