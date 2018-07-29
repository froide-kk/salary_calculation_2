class Project < ApplicationRecord
  belongs_to :user_info
  belongs_to :master_positions
end
