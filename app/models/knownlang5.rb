class Knownlang5 < ApplicationRecord
  belongs_to :resume5, optional: true

  validates :knownlang5, presence: true
end
