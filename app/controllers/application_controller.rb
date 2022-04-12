# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::API
  include JSONAPI::ActsAsResourceController
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_action :doorkeeper_authorize!

  private

  def context
    { user: current_user }
  end

  def user_not_authorized
    head :forbidden
  end
end
