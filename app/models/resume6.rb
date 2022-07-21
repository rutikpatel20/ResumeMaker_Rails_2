class Resume6 < ApplicationRecord
  validates :name, presence: true
  validates :current_role, presence: true
  validates :profile_summary, presence: true, length: { minimum: 500 }
  validates :contact_number, presence: true, format: { with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/i }
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :linkedin_username, presence: true

  has_many :skill6s, dependent: :destroy
  accepts_nested_attributes_for :skill6s

  has_many :award6s, dependent: :destroy
  accepts_nested_attributes_for :award6s

  has_many :knownlang6s, dependent: :destroy
  accepts_nested_attributes_for :knownlang6s

  has_many :experience6s, dependent: :destroy
  accepts_nested_attributes_for :experience6s

  has_many :education6s, dependent: :destroy
  accepts_nested_attributes_for :education6s
end
