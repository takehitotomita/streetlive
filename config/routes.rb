Rails.application.routes.draw do
  
  namespace :public do
    resources :bands
    resources :musics
    resources :users
    get 'users/unsubscribe'
    post 'users/withdraw'
    root to: 'top#top'
  end
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
