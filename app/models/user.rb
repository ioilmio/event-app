class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_many :events, dependent: :destroy, foreign_key: :creator_id, class_name: 'Event'
  has_many :attending, through: :attendances
end
