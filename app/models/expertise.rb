class Expertise < ApplicationRecord
  belongs_to :resume, optional: true
end
