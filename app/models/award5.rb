class Award5 < ApplicationRecord
  belongs_to :resume5, optional: true

  validates :award5, presence: true
end
