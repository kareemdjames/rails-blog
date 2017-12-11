Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    #nested because they are within the scope of posts comments belong to posts
    resources :comments
  end

  root 'posts#index'

end
