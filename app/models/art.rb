class Art < ApplicationRecord
  belongs_to :user
  belongs_to :artist, required: false
  mount_uploader :photo, PhotoUploader

  validates :location, presence: true
end
