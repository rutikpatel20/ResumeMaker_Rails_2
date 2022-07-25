class Knownlang6 < ApplicationRecord
  belongs_to :resume6, optional: true

  validates :knownlang6, presence: true
end
