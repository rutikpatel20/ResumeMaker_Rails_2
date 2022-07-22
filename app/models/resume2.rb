class Resume2 < ApplicationRecord

  # For Friendly ID
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true
  validates :profile_pic, presence: true
  validates :current_role, presence: true
  validates :profile_summary, presence: true, length: { minimum: 30 }
  validates :contact_number, presence: true, format: { with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/i }
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :linkedin_username, presence: true

  has_many :programminglang2s, dependent: :destroy
  accepts_nested_attributes_for :programminglang2s

  has_many :skill2s, dependent: :destroy
  accepts_nested_attributes_for :skill2s

  has_many :hobby2s, dependent: :destroy
  accepts_nested_attributes_for :hobby2s

  has_many :education2s, dependent: :destroy
  accepts_nested_attributes_for :education2s

  has_many :experience2s, dependent: :destroy
  accepts_nested_attributes_for :experience2s

  mount_uploader :profile_pic, ProfilepictureUploader
end
