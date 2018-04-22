class Art < ApplicationRecord
  belongs_to :user_id
  belongs_to :artist_id
  mount_uploader :photo, PhotoUploader
end
