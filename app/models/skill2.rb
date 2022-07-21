class Skill2 < ApplicationRecord
  belongs_to :resume2, optional: true

  validates :skill2, presence: true
end
