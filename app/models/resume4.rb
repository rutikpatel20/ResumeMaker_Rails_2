class Resume4 < ApplicationRecord
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
