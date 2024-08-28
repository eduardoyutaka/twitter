class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :follows_as_follower, class_name: "Follow", foreign_key: :follower_id
  has_many :follows_as_followee, class_name: "Follow", foreign_key: :followee_id
  has_many :followees, class_name: "User", through: :follows_as_follower
  has_many :followers, class_name: "User", through: :follows_as_followee
end
