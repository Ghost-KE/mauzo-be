# frozen_string_literal: true

# Apps Controller
class AppsController < ApplicationController

  def create
    resource = Doorkeeper::Application.new(apps_params)
    render json: { id: resource.id }, status: :created if resource.save!
  rescue StandardError => e
    render json: { error: e.message }, status: :bad_request
  end

  private

  def apps_params
    params.require(:data).require(:attributes).permit(:name, :redirect_uri, :scope)
  end

end
