class Skill3 < ApplicationRecord
  belongs_to :resume3, optional: true

  validates :skill3, presence: true
end
