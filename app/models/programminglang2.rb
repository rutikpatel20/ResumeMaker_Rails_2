class Programminglang2 < ApplicationRecord
  belongs_to :resume2, optional: true

  validates :programminglang2, presence: true
end
