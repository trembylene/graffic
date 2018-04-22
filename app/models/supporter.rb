class Supporter < ApplicationRecord
  belongs_to :user_id
  belongs_to :art_id
end
