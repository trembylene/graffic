class StreetArtist < User
  has_many :creations, class_name: 'Art', foreign_key: 'artist_id'
end
