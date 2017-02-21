Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :comments
  resources :components
  resources :positions
  resources :menus
  resources :menu_types
  resources :tag_refs
  resources :tags
  devise_for :users, controllers: { sessions: 'devise/sessions',
                                    registrations: 'registrations',
                                    confirmations: 'confirmations' }

  resources :users

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
  get 'admin/users'

  scope "admin" do
    resources :users do
      member do
        delete 'destroy'
        post 'grantadmin'
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
