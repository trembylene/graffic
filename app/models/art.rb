class Art < ApplicationRecord
  acts_as_votable

  belongs_to :user
  belongs_to :artist, class_name: "User", required: false
  has_many :supporters
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode
  reverse_geocoded_by :latitude, :longitude

  validates :location, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  scope :most_voted, -> {
    left_outer_joins(:votes_for)
            .select('arts.*, COUNT(votes.id) AS votes_count')
            .group('arts.id')
            .having('COUNT(votes.id) > 0')
            .order('votes_count DESC')
  }

  def self.search(search)
    joins(:user).where("title ILIKE ? OR description ILIKE ? OR tags ILIKE ? OR users.alias ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
