class Resume6 < ApplicationRecord
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
