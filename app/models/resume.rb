class Resume < ApplicationRecord

  # For Friendly ID
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true
  # validates :current_role, presence: true
  # validates :profile_pic, presence: true
  # validates :address_line_1, presence: true
  # validates :address_line_2, presence: true
  # validates :address_line_3, presence: true
  # validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  # validates :social_media_2, presence: true
  # validates :social_media_3, presence: true
  # validates :expertise_1, presence: true
  # validates :expertise_2, presence: true
  # validates :expertise_3, presence: true
  # validates :expertise_4, presence: true
  # validates :degree_1, presence: true
  # validates :college_1, presence: true
  # validates :hobby_1, presence: true
  # validates :hobby_2, presence: true
  # validates :profile_summary, presence: true, length: {minimum: 30}
  # validates :pr_job_title_1, presence: true
  # validates :pr_job_role_1, presence: true
  # validates :pr_job_description_1, presence: true, length: {minimum: 40}

  mount_uploader :profile_pic, ProfilepictureUploader

  has_many :expertises, dependent: :destroy
  accepts_nested_attributes_for :expertises, allow_destroy: true,
                                             reject_if: proc { |att| att["expertise"].blank? }
  has_many :hobbies, dependent: :destroy
  accepts_nested_attributes_for :hobbies, allow_destroy: true,
                                          reject_if: proc { |att| att["hobby_name"].blank? }
  has_many :educations, dependent: :destroy
  accepts_nested_attributes_for :educations, allow_destroy: true,
                                             reject_if: proc { |att| att["degree_title"].blank? || att["study_organization_name"].blank? }
  has_many :experiences, dependent: :destroy
  accepts_nested_attributes_for :experiences, allow_destroy: true,
                                              reject_if: proc { |att| att["job_title"].blank? || att["employer"].blank? || att["job_description"].blank? }
end
