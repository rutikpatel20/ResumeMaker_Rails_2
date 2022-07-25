class Education6 < ApplicationRecord
  belongs_to :resume6, optional: true

  validates :degree_title6, presence: true
  validates :study_organization_name6, presence: true
  validates :start_year6, presence: true
  validates :end_year6, presence: true
end
