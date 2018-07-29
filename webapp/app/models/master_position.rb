class MasterPosition < ApplicationRecord

  has_many :projects
  has_many :user_infos, through: :projects

  has_many :user_infos

end
