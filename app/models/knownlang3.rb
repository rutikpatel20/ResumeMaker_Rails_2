class Knownlang3 < ApplicationRecord
  belongs_to :resume3, optional: true

  validates :knownlang3, presence: true
end
