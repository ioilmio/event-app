class Event < ApplicationRecord
  scope :upcoming, -> { where('date > ?', Date.today) }
  scope :past, -> { where('date < ?', Date.today) }

  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :location, presence: true
  belongs_to :creator, class_name: 'User'

  belongs_to :user

  has_many :attendances, foreign_key: :event_id, source: :event
  has_many :users, through: :attendance, class_name: 'User', source: :user
end
