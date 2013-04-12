Zonazero::Application.routes.draw do
  
  mount Mercury::Engine => '/'

  resources :messages
  resources :pages do
    member { post :mercury_update }
  end
  resources :awards
  resources :works
  resources :clients

  match '/about',     to: 'static_pages#about'
  match '/contact',   to: 'static_pages#contact'
  match '/kit',       to: 'static_pages#kit'
  match '/order',     to: 'static_pages#order' 
  
  
  root :to => 'works#home'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  mount Ckeditor::Engine => '/ckeditor'
  ActiveAdmin.routes(self)
  
end