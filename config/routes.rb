Rails.application.routes.draw do

  namespace :admin do
    resources :users
    resources :musics
    get 'tops/top'
  end
  
  namespace :public do
    resources :bands
    get 'musics/search'
    resources :musics
    resources :users do
      collection do
        get 'unsubscribe' # public/users/unsubscribe
      end
    #   member do
    #     get 'musics'  # public/user/:id/musics__
    #   end
     end

    #get 'users/unsubscribe' => "public/users#unsubscribe"
    post 'users/withdraw'
    root to: 'tops#top'
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
