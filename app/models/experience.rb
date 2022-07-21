class Experience < ApplicationRecord
  belongs_to :resume, optional: true

  validates :job_title, presence: true
  validates :employer, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :job_description, presence: true, length: { minimum: 260 }
end
