NgdaleRails4::Application.routes.draw do
  devise_for :users, :controllers => { :sessions => "users/sessions" }

  resources :sermons, :only => [:index, :show]
  namespace :admin do
    root :to => "dashboard#home"
    resources :sermons
  end

  namespace :members do
    root :to => "dashboard#home"
  end

  root :to => "pages#home"
end
