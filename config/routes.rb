Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      resources :items
    end
  end 
 
  namespace :api do 
    namespace :v1 do
      resources :categories do
        resources :items
      end
    end 
  end 

end

