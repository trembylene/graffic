class Art < ApplicationRecord
  belongs_to :user
  belongs_to :artist, class_name: "User", required: false
  mount_uploader :photo, PhotoUploader

  validates :location, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  def self.search(search)
    joins(:user).where("title ILIKE ? OR description ILIKE ? OR tags ILIKE ? OR users.alias ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
