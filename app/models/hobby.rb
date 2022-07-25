class Hobby < ApplicationRecord
  belongs_to :resume, optional: true

  validates :hobby_name, presence: true
end
