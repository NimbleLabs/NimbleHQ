Rails.application.routes.draw do
  devise_for :users, :path_names => {:sign_in => 'signin', :sign_up => 'register', :sign_out => 'logout'},
             :controllers => {registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks'}

  get 'privacy', to: 'home#privacy', as: 'privacy'
  get 'terms', to: 'home#terms', as: 'terms'
  get 'home/index'
  root to: 'home#index'
end
