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
end
