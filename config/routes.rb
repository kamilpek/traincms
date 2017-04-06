Rails.application.routes.draw do

  resources :events
  resource :calendar, only: [:show], controller: :calendar

  mount Ckeditor::Engine => '/ckeditor'
  resources :comments
  resources :tag_refs
  resources :tags
  devise_for :users, controllers: { sessions: 'devise/sessions',
                                    registrations: 'registrations',
                                    confirmations: 'confirmations' }

  resources :users

  get 'pages/home'
  get 'pages/help'
  get 'pages/about'
  get 'pages/search'

  get 'admin/main'
  get 'admin/articles'
  get 'admin/categories'
  get 'admin/tags'
  get 'admin/menus'
  get 'admin/comments'
  get 'admin/statistics'
  get 'admin/users'

  scope "admin" do
    resources :users do
      member do
        get 'new'
        get 'edit'
        patch 'update'
        post 'grantadmin'
        post 'create'
        delete 'destroy'
      end
    end
  end

  scope "status" do
    resources :articles do
      member do
        post 'activating'
        post 'highlighting'
        get 'print_article'
        get 'print_article_comments'
        get 'article_tags'
      end
    end
  end

  resources :articles
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
end
