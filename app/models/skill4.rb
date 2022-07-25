class Skill4 < ApplicationRecord
  belongs_to :resume4, optional: true

  validates :skill4, presence: true
end
