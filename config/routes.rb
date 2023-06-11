Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  
    root 'home#index'

    resources :employees
    resources :documents


    get  'services' => 'pages#services'
    get  'about_us' => 'pages#about_us'
    get  'contact_us' => 'pages#contact_us'



    
end
