Rails.application.routes.draw do
  get 'welcome/index'
  delete 'welcome/eliminar'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  post 'auth/steam/callback' => 'welcome#auth_callback'
end