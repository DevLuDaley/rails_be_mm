Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :meals, :recipes #, only: [:index, :update], :recipe
    end
  end
end

# end