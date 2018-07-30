class UserInfo < ApplicationRecord

  belongs_to :master_position
  belongs_to :master_job
  has_one :user_points
end
