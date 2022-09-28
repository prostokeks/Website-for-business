Rails.application.routes.draw do
  get 'rooms/index'

  devise_for :users, controllers: {registrations: "users/registrations",
                                   sessions: "users/sessions"}

  root "static_pages#index"

  get 'static_pages/careers'
  get 'static_pages/portfolio'
  get 'static_pages/team'
  get 'products/outsourcing'
  get 'products/internal'
  get 'office/static_back_pages/team'
  get 'office/users/profile/:id', to: 'office/users#profile', as: 'office/user/profile'


  resources :blogs do
    collection do
      post :index
      post :create_blog, to: "blogs#create", as: :create
    end
  end
  resources :forums do
    resources :comments
    collection do
      post :index
    end
  end
  resources :flibraries
  resources :libraries do
    collection do
      post :index
      post :create_library, to: "libraries#create", as: :create
    end
  end
  resources :contacts
  resources :rooms
  resources :products, except: :index
  resources :rooms do
    resources :messages
  end

  namespace :office do
    resources :users
    resources :teams
    resources :contacts
    resources :rooms do
      resources :messages
    end
    resources :static_back_pages
    resources :forums
    resources :products
    resources :libraries do
    collection do
      post :index
      post :create_library, to: "libraries#create", as: :create
     end
    end
    resources :blogs  do
      collection do
        post :index
        post :create_blog, to: "blog#create", as: :create
      end
    end
  end
end
