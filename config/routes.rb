Rails.application.routes.draw do
  resources :user_points
  resources :master_standards
  resources :master_metropolitions
  resources :master_family_allowances
  resources :master_additionalpoints
  resources :master_jobs
  resources :save_infos
  resources :master_positions
  resources :user_infos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
