class UserPoint < ApplicationRecord
  belongs_to :user_info
  belongs_to :master_additionalpoint
end
