class Experience3 < ApplicationRecord
  belongs_to :resume3, optional: true

  validates :job_title3, presence: true
  validates :employer3, presence: true
  validates :start_date3, presence: true
  validates :end_date3, presence: true
  validates :work_description3, presence: true, length: { minimum: 260 }
end
