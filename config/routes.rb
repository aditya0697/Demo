Rails.application.routes.draw do

  get 'messages/reply'
  
  Rails.application.routes.draw do
  post 'twilio/voice' => 'twilio#voice'
end

  devise_for :users, :controllers => { :registrations => "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resource :messages do
  collection do
    post 'reply'
  end
end
end
