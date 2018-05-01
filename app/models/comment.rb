class Comment < ApplicationRecord
  belongs_to :art
  validates :content, presence: true
end
