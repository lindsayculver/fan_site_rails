Rails.application.routes.draw do
  resources :gears do
    resources :reviews
  end
end
