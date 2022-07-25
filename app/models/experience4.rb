class Experience4 < ApplicationRecord
  belongs_to :resume4, optional: true

  validates :job_title4, presence: true
  validates :employer4, presence: true
  validates :start_date4, presence: true
  validates :end_date4, presence: true
  validates :work_description4, presence: true, length: { minimum: 260 }
end
