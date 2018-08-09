class UserInfo < ApplicationRecord
  has_one :save_infos
  belongs_to :master_job
  belongs_to :master_position
end
