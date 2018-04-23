class User < ApplicationRecord
  has_many :supporters, dependent: :destroy
  has_many :arts
  mount_uploader :avatar, PhotoUploader
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :alias, presence: true, uniqueness: true
  validates :email, uniqueness: true
  validates :type, presence: true

  TYPE = {
    'User' => 'Art Enthusiast',
    'StreetArtist' => 'Street Artist',
  }

end
