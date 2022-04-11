# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :agents
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end
  devise_for :users
  jsonapi_resources :apps
  jsonapi_resources :roles

  namespace :v1 do
    jsonapi_resources :users
    jsonapi_resources :agents
  end

end
