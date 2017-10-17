Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'index' => 'welcome#index'
  get 'about' => 'welcome#about'

  resources :travels, :only => [:index, :show]
  resources :parties, :only => [:index, :show]
  resources :shows, :only => [:index, :show]
  resources :foods, :only => [:index, :show]
  resources :activities, :only => [:index, :show]
  resources :messages, :only => [:new, :create]

  get 'messages' => 'messages#new'

  root 'welcome#index'

end
