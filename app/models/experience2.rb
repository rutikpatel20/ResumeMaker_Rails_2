class Experience2 < ApplicationRecord
  belongs_to :resume2, optional: true

  validates :job_title2, presence: true
  validates :employer2, presence: true
  validates :start_date2, presence: true
  validates :end_date2, presence: true
  validates :work_description2, presence: true, length: { minimum: 250 }
end
