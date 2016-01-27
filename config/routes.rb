Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

    resources :contacts, only: [:new, :create]
    
    resources :poems, only: [:index, :show]
    
    get '/about-me', to: "poems#about_me", as: :about
    get '/contact', to: "contacts#new", as: :contact
    get '/', to: "poems#title", as: :title
    root to: "poems#title"
end
