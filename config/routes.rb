Rails.application.routes.draw do

  resources :shops, param: :owner_cd, only: [:index,:show]
  resources :zaikos, param: :stock_id, only: [:index,:show]
end
