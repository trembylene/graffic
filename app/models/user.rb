class User < ApplicationRecord
  has_many :supporters, dependent: :destroy
  has_many :arts
  mount_uploader :avatar, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :alias, presence: true, uniqueness: true
  validates :email, uniqueness: true
  validates :type, presence: true

  TYPE = {
    'User' => 'Art Enthusiast',
    'StreetArtist' => 'Street Artist',
  }

end
