class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  self.implicit_order_column = 'created_at'

  validates :email, format: URI::MailTo::EMAIL_REGEXP

  def self.authenticate!(username, password)
    user = User.find_for_authentication(email: username)
    user.try(:valid_password?, password) ? user : nil
  end
end

# Doorkeeper::Application.create(name: "web", redirect_uri: "", scopes: "")
# User.create({email: 'admin@mail.com', password: 'password123'})
