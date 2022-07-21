class Resume5 < ApplicationRecord
  validates :name, presence: true
  validates :current_role, presence: true
  validates :profile_summary, presence: true, length: { minimum: 500 }
  validates :contact_number, presence: true, format: { with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/i }
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :linkedin_username, presence: true

  has_many :skill5s, dependent: :destroy
  accepts_nested_attributes_for :skill5s

  has_many :award5s, dependent: :destroy
  accepts_nested_attributes_for :award5s

  has_many :knownlang5s, dependent: :destroy
  accepts_nested_attributes_for :knownlang5s

  has_many :experience5s, dependent: :destroy
  accepts_nested_attributes_for :experience5s

  has_many :education5s, dependent: :destroy
  accepts_nested_attributes_for :education5s
end
