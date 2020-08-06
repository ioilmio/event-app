class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_many :events, dependent: :destroy, foreign_key: :creator_id, class_name: 'Event', source: :event

  has_many :attendances, foreign_key: :user_id, source: :user
  has_many :events, through: :attendance, class_name: 'Event', source: :event
end
