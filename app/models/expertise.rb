class Expertise < ApplicationRecord
  belongs_to :resume, optional: true

  validates :expertise, presence: true
end
