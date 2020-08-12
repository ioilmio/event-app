class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_many :events, dependent: :destroy, foreign_key: :creator_id

  has_many :attendances, foreign_key: :attendee_id, source: :user
  has_many :attended_events, through: :attendances, class_name: 'Event', source: :attended_event
end
