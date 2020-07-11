Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'answers/edit'
#  get 'questions/index'
#  get 'questions/show'
#  get 'questions/new'
#  get 'questions/edit'
  root 'home#index'
  resources :users, only: [:new, :create]
  resources :questions do
    resources :answers
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
