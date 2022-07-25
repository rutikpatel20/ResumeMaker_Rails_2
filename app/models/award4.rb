class Award4 < ApplicationRecord
  belongs_to :resume4, optional: true

  validates :award4, presence: true
end
