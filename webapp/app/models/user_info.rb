class UserInfo < ApplicationRecord

  has_many :projects
  has_many :master_position, through: :projects

  belongs_to :master_position

end
