Rails.application.routes.draw do
  devise_for :users, controllers: { invitations: "users/invitations" }

  resources :students
  root to: "users#index"
end
