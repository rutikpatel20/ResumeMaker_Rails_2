class Knownlang4 < ApplicationRecord
  belongs_to :resume4, optional: true

  validates :knownlang4, presence: true
end
