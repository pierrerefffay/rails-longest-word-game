Rails.application.routes.draw do
  get 'settings', to: 'games#settings', as: :settings
  post 'score', to: 'games#score', as: :score
  # post 'settings', to: 'games#settings'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
