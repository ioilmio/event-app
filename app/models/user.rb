class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :events, dependent: :destroy, foreign_key: :creator_id
  has_many :attending, through: :attendances
end
