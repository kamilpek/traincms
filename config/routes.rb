Rails.application.routes.draw do

  resources :components
  resources :bookmarks
  resources :event_guests
  resources :events
  resource :calendar, only: [:show], controller: :calendar

  mount Ckeditor::Engine => '/ckeditor'
  resources :comments
  resources :tag_refs
  resources :tags
  devise_for :users
  resources :articles
  resources :categories

  get 'pages/home'
  get 'pages/help'
  get 'pages/about'
  get 'pages/search'
  get 'pages/statistics'

  get 'admin/main'
  get 'admin/articles'
  get 'admin/categories'
  get 'admin/tags'
  get 'admin/menus'
  get 'admin/comments'
  get 'admin/users'

  scope "admin" do
    resources :users do
      member do
        delete 'destroy'
        get 'new'
        get 'edit'
        patch 'update'
        post 'grantadmin'
        post 'create'        
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

  scope "bookmark" do
    resources :bookmarks do
      member do
        post 'sethomepage'
        post 'setnavbar'
      end
    end
  end

  scope "component" do
    resources :components do
      member do
        post 'setstatus'
      end
    end
  end

  scope "comments" do
    resources :comments do
      member do
        post 'voteplus'
        post 'voteminus'
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
end
