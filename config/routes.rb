# frozen_string_literal: true

Rails.application.routes.draw do
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end
  devise_for :users
  jsonapi_resources :apps
end
