class User < ApplicationRecord
  has_many :supporters
  has_many :arts
  mount_uploader :avatar, PhotoUploader
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
