# frozen_string_literal: true

class RoleResource < JSONAPI::Resource
  caching
  cache_field :updated_at
  attributes :name
end
