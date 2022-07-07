class Resume2 < ApplicationRecord
  has_many :programminglang2s, dependent: :destroy
  accepts_nested_attributes_for :programminglang2s
end
