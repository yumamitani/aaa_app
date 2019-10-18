Rails.application.routes.draw do
  devise_for :users
 root to:'comments#index'
 get 'posts/new' => 'comments#new'
 post 'posts/new' => 'comments#create'
 delete 'comments/:id' => 'comments#destroy'
end
