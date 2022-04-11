# frozen_string_literal: true

module V1
  class AgentResource < JSONAPI::Resource
    attributes :phone, :password
  end
end
