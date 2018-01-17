Rails.application.routes.draw do
  resources :educations
  resources :jobs
  resources :resumes
  resources :templates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
