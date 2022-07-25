class Award3 < ApplicationRecord
  belongs_to :resume3, optional: true

  validates :award3, presence: true
end
