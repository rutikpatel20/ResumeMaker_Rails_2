class Education5 < ApplicationRecord
  belongs_to :resume5, optional: true

  validates :degree_title5, presence: true
  validates :study_organization_name5, presence: true
  validates :start_year5, presence: true
  validates :end_year5, presence: true
end
