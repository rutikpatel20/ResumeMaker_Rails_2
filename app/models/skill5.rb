class Skill5 < ApplicationRecord
  belongs_to :resume5, optional: true

  validates :skill5, presence: true
end
