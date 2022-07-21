class Experience6 < ApplicationRecord
  belongs_to :resume6, optional: true

  validates :job_title6, presence: true
  validates :employer6, presence: true
  validates :start_date6, presence: true
  validates :end_date6, presence: true
  validates :work_description6, presence: true, length: { minimum: 260 }
end
