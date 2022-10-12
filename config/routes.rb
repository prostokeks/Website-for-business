Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: "users/registrations",
                                   sessions: "users/sessions"}

  root "static_pages#index"

  get 'careers', to: 'careers#index'
  get 'static_pages/portfolio'
  get 'team', to: 'static_pages#team'
  get 'products/outsourcing'
  get 'products/internal'
  get 'office/team', to: 'office/static_back_pages#team'
  get 'office/users/profile/:id', to: 'office/users#profile', as: 'office/user/profile'
  get 'office/years/:year_id/users/:id', to: 'office/users#salary', as: 'office/user/salary'

  get 'office/invoices/years/:year_id/months/:id', to: 'office/invoices#month', as: 'office/invoices/month'
  get 'office/invoices/years/:id', to: 'office/invoices#index', as: 'office/invoices/index'

  get 'office/docs', to: 'office/static_back_pages#docs'
  get 'office/dashboard', to: 'office/static_back_pages#index'


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
      post :create_forum, to: "forums#create", as: :create
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
  resources :careers
  resources :rooms
  resources :products, except: :index
  resources :rooms do
    resources :messages
  end
  resources :salaries, except: [:index, :show, :edit, :new]

  namespace :office do
    resources :users
    resources :teams
    resources :contacts
    resources :careers
    resources :rooms do
      resources :messages
    end
    resources :forums
    resources :products
    resources :years, only: :show do
      resources :months, only: :show
    end
    resources :salaries, except: [:index, :show]

    resources :invoices

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
