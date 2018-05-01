class Comment < ApplicationRecord
  belongs_to :art
  belongs_to :user
  validates :content, presence: true
  validates :user, presence: true
  validates :art, presence: true
end
