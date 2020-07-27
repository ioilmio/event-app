class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :events, dependent: :destroy
  has_many :attending, through: :attendance
end
