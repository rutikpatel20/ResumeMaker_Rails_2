class Education < ApplicationRecord
  belongs_to :resume, optional: true

  validates :degree_title, presence: true
  validates :study_organization_name, presence: true
end
