class Comment < ApplicationRecord
  belongs_to :art
  belongs_to :user
  validates :content, presence: true
  validates :user, presence: true
  validates :art, presence: true

  def time_since_creation
    timestamp = ((Time.now - self.created_at) / 60).to_i
    if timestamp < 60
      return "#{timestamp} #{'minute'.pluralize(timestamp)} ago"
    elsif timestamp < 1440
      return "#{(timestamp / 60).to_i} #{'hour'.pluralize((timestamp / 60).to_i)} ago"
    else
      return "#{(timestamp / 1440).to_i} #{'day'.pluralize((timestamp / 1440).to_i)} ago"
    end
  end
end
