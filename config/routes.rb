NgdaleRails4::Application.routes.draw do

  root :to => "pages#home"
  devise_for :users, :controllers => { :sessions => "users/sessions" }

  resources :sermons, :only => [:index, :show]
  namespace :admin do
    root :to => "dashboard#home"
    resources :sermons
    resources :blog_posts
    resources :pages
    resources :updates do
      collection do
        get :phone_call
      end
    end
  end

  namespace :members do
    root :to => "dashboard#home"
  end

  get '/:slug' => "pages#show"
end
