class Resume3 < ApplicationRecord
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
