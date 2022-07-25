class Education3 < ApplicationRecord
  belongs_to :resume3, optional: true

  validates :degree_title3, presence: true
  validates :study_organization_name3, presence: true
  validates :start_year3, presence: true
  validates :end_year3, presence: true
end
