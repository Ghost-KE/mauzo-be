class AppResource < JSONAPI::Resource
  caching
  cache_field :updated_at
  attributes :name, :uid, :secret, :redirect_uri, :scopes, :confidential
end
