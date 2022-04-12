# frozen_string_literal: true

module V1
  class AgentResource < JSONAPI::Resource
    caching
    cache_field :updated_at
    attributes :phone, :password
  end
end
