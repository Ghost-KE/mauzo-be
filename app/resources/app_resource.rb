class AppResource < JSONAPI::Resource
  attributes :name, :uid, :secret, :redirect_uri, :scopes, :confidential
end
