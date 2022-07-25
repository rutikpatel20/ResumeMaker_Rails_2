class Experience5 < ApplicationRecord
  belongs_to :resume5, optional: true

  validates :job_title5, presence: true
  validates :employer5, presence: true
  validates :start_date5, presence: true
  validates :end_date5, presence: true
  validates :work_description5, presence: true, length: { minimum: 260 }
end
