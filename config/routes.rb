Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'index' => 'welcome#index'
  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'

  resources :travels, :only => [:index, :show]
  resources :parties, :only => [:index, :show]
  resources :shows, :only => [:index, :show]
  resources :foods, :only => [:index, :show]
  resources :activities, :only => [:index, :show]

  root 'welcome#index'

end
