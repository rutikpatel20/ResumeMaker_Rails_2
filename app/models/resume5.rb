class Resume5 < ApplicationRecord
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
