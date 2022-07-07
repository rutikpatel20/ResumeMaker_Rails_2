class Resume2 < ApplicationRecord
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
end
