class Resume4 < ApplicationRecord

  # For Friendly ID
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true
  validates :profile_pic, presence: true
  validates :current_role, presence: true
  validates :profile_summary, presence: true, length: { minimum: 500 }
  validates :contact_number, presence: true, format: { with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/i }
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :linkedin_username, presence: true
  has_many :skill4s, dependent: :destroy
  accepts_nested_attributes_for :skill4s

  has_many :award4s, dependent: :destroy
  accepts_nested_attributes_for :award4s

  has_many :knownlang4s, dependent: :destroy
  accepts_nested_attributes_for :knownlang4s

  has_many :experience4s, dependent: :destroy
  accepts_nested_attributes_for :experience4s

  has_many :education4s, dependent: :destroy
  accepts_nested_attributes_for :education4s

  mount_uploader :profile_pic, ProfilepictureUploader
end
