class Comment < ApplicationRecord
  belongs_to :art
  belongs_to :user
  validates :content, presence: true
  validates :user, presence: true
  validates :art, presence: true

  def time_since_creation
    timestamp = ((Time.now - self.created_at) / 60).to_i
    if timestamp < 60
      return "#{timestamp} min ago"
    elsif timestamp < 1440
      return "#{(timestamp / 60).to_i} hours ago"
    else
      return "#{(timestamp / 1440).to_i} days ago"
    end
  end
end
