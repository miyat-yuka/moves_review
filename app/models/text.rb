class Text < ApplicationRecord
  belongs_to :user

  #いいね機能のアソシエーション
  has_many :likes
  has_many :liking_users, through: :likes, source: :user

  validates :text, presence: true
end