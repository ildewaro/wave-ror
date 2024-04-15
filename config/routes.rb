Rails.application.routes.draw do
  get 'api/features' => 'features#all', as: 'features'
  post 'api/features/:feature_id/comments' => 'comments#create', as: 'createcomment'
  get "up" => "rails/health#show", as: :rails_health_check
  require 'sidekiq/web'
    mount Sidekiq::Web => '/sidekiq'

end
