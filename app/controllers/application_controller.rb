# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::API
  include JSONAPI::ActsAsResourceController
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_action :doorkeeper_authorize!

  private

  def current_user
    @current_user ||= User.find_by(id: doorkeeper_token[:resource_owner_id]) ||
                      Agent.find_by(id: doorkeeper_token[:resource_owner_id])
  end

  def context
    { user: current_user }
  end

  def user_not_authorized
    head :forbidden
  end
end
