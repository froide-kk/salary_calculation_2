class MasterPosition < ApplicationRecord
<<<<<<< HEAD
  has_many :projects
  has_many :user_infos, through: :projects
=======
  has_many :user_infos
>>>>>>> 392dabb662ee489a8b8385e71068dee14dc82bcd
end
