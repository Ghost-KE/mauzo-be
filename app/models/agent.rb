# frozen_string_literal: true

# Agent Model
class Agent < ApplicationRecord
  acts_as_paranoid
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  self.implicit_order_column = 'created_at'

  before_validation :setup_agent_email
  validates :phone, uniqueness: true
  validate :phone_valid?
  # validates :attribute, phone: true

  def self.authenticate!(phone, password)
    agent = Agent.find_for_authentication(phone: phone)
    agent.try(:valid_password?, password) ? agent : nil
  end

  private

  def setup_agent_email
    self.email = "#{phone}@mail.com"
  end

  def phone_valid?
    errors.add(:phone, 'invalid phone number') unless Phonelib.parse(phone).valid?
  end
end
