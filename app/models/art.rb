class Art < ApplicationRecord
  belongs_to :user
  belongs_to :artist, required: false
  mount_uploader :photo, PhotoUploader
  validates :latitude, presence: true
  validates :longitude, presence: true
end
