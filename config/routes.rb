Rails.application.routes.draw do
  namespace :admin do
      resources :alumnis
      resources :entrepreneurs
      resources :articles
      resources :projects
      resources :candidacies
      resources :languages
      resources :roles
      resources :tasks

      root to: "alumnis#index"
    end
  devise_for :alumnis, controllers: {
    sessions: 'alumnis/sessions',
    registrations: 'alumnis/registrations'
  }

  devise_for :entrepreneurs, controllers: {
    sessions: 'entrepreneurs/sessions',
    registrations: 'entrepreneurs/registrations'
  }

  resources :alumnis, only: [:index, :show, :update, :edit] do
    collection do
      get 'dashboard', to: 'alumnis#dashboard'
    end
  end

  resources :entrepreneurs, only: [:index, :show, :update, :edit] do
    collection do
      get 'dashboard', to: 'entrepreneurs#dashboard'
    end
  end

  root to: 'pages#home'
  get '/contact', to: 'pages#contact'

  resources :projects, except: :destroy do
    resources :tasks do
      member do
        get 'complete', to: 'tasks#complete'
      end
    end
    resources :roles do
      resources :candidacies
    end
  end

  resources :articles
end
