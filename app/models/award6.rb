class Award6 < ApplicationRecord
  belongs_to :resume6, optional: true

  validates :award6, presence: true
end
