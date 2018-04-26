class Art < ApplicationRecord
  acts_as_votable

  belongs_to :user
  belongs_to :artist, required: false
  mount_uploader :photo, PhotoUploader

  validates :location, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end
