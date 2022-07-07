class Resume2 < ApplicationRecord
  has_many :programminglang2s, dependent: :destroy
  accepts_nested_attributes_for :programminglang2s

  has_many :skill2s, dependent: :destroy
  accepts_nested_attributes_for :skill2s

  has_many :hobby2s, dependent: :destroy
  accepts_nested_attributes_for :hobby2s
end
