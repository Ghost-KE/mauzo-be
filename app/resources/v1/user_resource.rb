# frozen_string_literal: true

module V1
  class UserResource < JSONAPI::Resource
    attributes :email, :password
  end
end
