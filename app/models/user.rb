class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :texts

         #いいね機能のアソシエーション
         has_many :likes
         has_many :likes_texts, through: :likes, source: :text
end
