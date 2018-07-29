class UserInfo < ApplicationRecord
<<<<<<< HEAD
  has_many :projects
  has_many :master_position, through: :projects
=======
  belongs_to :master_position
>>>>>>> 392dabb662ee489a8b8385e71068dee14dc82bcd
end
