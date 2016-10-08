Rails.application.routes.draw do

  get 'availabilities/index'

  get 'availabilities/show'

  get 'availabilities/new'

  get 'availabilities/edit'

  get 'availabilities/delete'

  get 'index/show'

  get 'index/new'

  get 'index/edit'

  #Routes for each page. Current Root is the home page
  root 'static_pages#home'
  
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/timetable', to: 'static_pages#timetable'
  
  get  '/signup',  to: 'users#new'
  get  '/students',  to: 'users#index'
  get  '/teachers',  to: 'users#index_teacher'
  
  get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get  '/book_session',  to: 'free_play_rooms#new'
  get  '/current_sessions',  to: 'free_play_rooms#index'
  
  resources :users
  resources :free_play_rooms do
    member do
      get :delete
    end
  end
  resources :availabilities do
    member do
      get :delete
    end
  end
    
end
