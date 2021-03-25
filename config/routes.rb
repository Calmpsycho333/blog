Rails.application.routes.draw do
  resources :groups
    resources :posts
    
    devise_scope :user do
        root :to => redirect("/users/sign_in")
    end

    devise_for :users, controllers: { sessions: "users/sessions" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
