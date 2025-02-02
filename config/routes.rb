Rails.application.routes.draw do
  get 'welcome/index'
  # get 'users/index'
  get 'users', to: 'users#index'
  root "welcome#index" # ここを設定
end
