Rails.application.routes.draw do
  root :to => redirect('/posts')
  resources :posts do
    resources :comments, :only => [:create, :update, :new, :edit, :destroy]
  end
end
