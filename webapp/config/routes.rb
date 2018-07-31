Rails.application.routes.draw do
  resources :companies
  resources :user_points
  resources :master_additionalpoints
  resources :save_infos
  resources :master_jobs
  resources :master_positions
  resources :user_infos
  resources :test4s
  resources :test2s
  resources :master_standards
  resources :master_metropolitions
  resources :master_family_allowances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
