class User < ApplicationRecord
  include ActiveModel::Validations

  validates :email, presence: true, length: { maximum: 255 }, email: true
  validates :first_name, presence: true, length: { maximum: 100 }
  validates :last_name, presence: true, length: { maximum: 100 }
end
