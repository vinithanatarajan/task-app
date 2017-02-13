Rails.application.routes.draw do
  devise_for :users, controllers: { invitations: "users/invitations" }
  root to: "users#index"
end
