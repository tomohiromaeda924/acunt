Rails.application.routes.draw do
  
  #from_user
  get 'from_user/first' => 'from_user#first'
  get 'from_user/finish' => 'from_user#finish'
  post 'from_user/data' => 'from_user#data'
  
  #tax_consultation
  get 'tax_consultation/:id/new' => 'tax_consultation#new'
  get 'tax_consultation/:id/finish' => 'tax_consultation#finish'
  post 'tax_consultation/:id/data' => 'tax_consultation#data'
  
  #job_offers
  get 'job_offers/:id/new' => 'job_offers#new'
  get 'job_offers/:id/finish' => 'job_offers#finish'
  post 'job_offers/:id/data' => 'job_offers#data'
  
  #career_changes
  get 'career_changes/:id/new' => 'career_changes#new'
  get 'career_changes/:id/finish' => 'career_changes#finish'
  post 'career_changes/:id/data' => 'career_changes#data'
  
  #our_company
  get 'our_company/company_profile'
  
  #users
  get 'users/new' => 'users#new'
  get 'users/destroy' => 'users/destroy'
  get 'users/login_form' => 'users#login_form'
  get 'users/logout' => 'users#logout'
  post 'users/create' => 'users#create'
  post 'users/login' => 'users#login'
  
  #home
  get '/' => 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
