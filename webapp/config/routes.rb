Rails.application.routes.draw do
  resources :user_points
  resources :user_infos
  get 'chart_sample/index'

  resources :save_infos
  resources :companies
  resources :master_additionalpoints
  resources :master_jobs
  resources :master_positions
  resources :test4s
  resources :test2s
  resources :master_standards
  resources :master_metropolitions
  resources :master_family_allowances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
