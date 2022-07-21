class Education4 < ApplicationRecord
  belongs_to :resume4, optional: true

  validates :degree_title4, presence: true
  validates :study_organization_name4, presence: true
  validates :start_year4, presence: true
  validates :end_year4, presence: true
end
