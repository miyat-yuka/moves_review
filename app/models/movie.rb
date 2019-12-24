class Movie < ApplicationRecord
  has_many :texts
  belongs_to :genre
end
