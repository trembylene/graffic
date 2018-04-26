class User < ApplicationRecord
  acts_as_voter

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

  def toggle_like(art)
    liked?(art) ? art.unliked_by(self) : art.liked_by(self)
  end
end
