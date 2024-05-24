class Cat < ApplicationRecord
  validates :name, presence: true
  validates :picture, presence: true
  validates :origin, presence: true
  validates :temperament, presence: true
  validates :description, presence: true
end
