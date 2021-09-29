class Movie < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :is_showing, presence: true
end
