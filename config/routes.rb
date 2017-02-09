Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :comments
  resources :components
  resources :positions
  resources :menus
  resources :menu_types
  resources :tag_refs
  resources :tags
  devise_for :users

  get 'pages/home'
  get 'pages/help'
  get 'pages/about'

  get 'admin/main'
  get 'admin/articles'
  get 'admin/categories'
  get 'admin/tags'
  get 'admin/menus'
  get 'admin/comments'
  get 'admin/statistics'

  resources :articles
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
end
