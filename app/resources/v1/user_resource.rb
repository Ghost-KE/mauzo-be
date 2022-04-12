# frozen_string_literal: true

module V1
  class UserResource < JSONAPI::Resource
    caching
    cache_field :updated_at
    attributes :email, :password

    def fetchable_fields
      super - [:password]
    end
  end
end
