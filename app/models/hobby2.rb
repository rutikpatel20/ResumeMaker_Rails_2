class Hobby2 < ApplicationRecord
  belongs_to :resume2, optional: true

  validates :hobby2, presence: true
end
