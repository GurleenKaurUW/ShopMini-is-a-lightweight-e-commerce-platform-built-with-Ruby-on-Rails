# app/models/user.rb
class User < ApplicationRecord
  # Devise modules (recommended)
  # devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # Associations
  has_many :cart_items, dependent: :destroy
  has_many :orders, dependent: :nullify

  # Simple admin flag for demo
  def admin?
    self.admin
  end
end
