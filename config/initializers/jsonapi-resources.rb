# frozen_string_literal: true

JSONAPI.configure do |config|
  config.resource_key_type = :uuid

  config.resource_cache = Rails.cache
  config.default_processor_klass = JSONAPI::Authorization::AuthorizingProcessor
  config.exception_class_whitelist = [Pundit::NotAuthorizedError]

  config.default_paginator = :paged

  config.default_page_size = 10
  config.maximum_page_size = 20
end
