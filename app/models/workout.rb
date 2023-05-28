class Workout < ApplicationRecord
  validates :split, presence: true
  validates :duration, presence: true
end
