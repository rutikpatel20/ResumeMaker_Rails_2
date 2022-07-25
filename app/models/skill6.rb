class Skill6 < ApplicationRecord
  belongs_to :resume6, optional: true

  validates :skill6, presence: true
end
