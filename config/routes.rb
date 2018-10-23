Rails.application.routes.draw do
  get 'welcome/index'
  get '/inicio', to: 'welcome#index'
  resources :coins
  root to: "welcome#index"
end
