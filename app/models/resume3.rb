class Resume3 < ApplicationRecord
  validates :name, presence: true
  validates :profile_pic, presence: true
  validates :current_role, presence: true
  validates :profile_summary, presence: true, length: { minimum: 500 }
  validates :contact_number, presence: true, format: { with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/i }
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :linkedin_username, presence: true

  has_many :skill3s, dependent: :destroy
  accepts_nested_attributes_for :skill3s

  has_many :award3s, dependent: :destroy
  accepts_nested_attributes_for :award3s

  has_many :knownlang3s, dependent: :destroy
  accepts_nested_attributes_for :knownlang3s

  has_many :experience3s, dependent: :destroy
  accepts_nested_attributes_for :experience3s

  has_many :education3s, dependent: :destroy
  accepts_nested_attributes_for :education3s

  mount_uploader :profile_pic, ProfilepictureUploader
end
