class Education2 < ApplicationRecord
  belongs_to :resume2, optional: true

  validates :degree_title2, presence: true
  validates :study_organization_name2, presence: true
  validates :start_year2, presence: true
  validates :end_year2, presence: true
end
