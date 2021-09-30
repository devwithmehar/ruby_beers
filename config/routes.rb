Rails.application.routes.draw do
  # get 'companies/index'
  # get 'companies/show'
  # DSL - Domain specific language
  # making like an execute config file
  get "/companies", to: "companies#index", as: "companies" # companies_path
  get "/companies/:id", to: "companies#show", as: "company" # company_path
  get "/yay", to: "companies#index", as: "yay"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
