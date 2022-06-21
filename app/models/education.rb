class Education < ApplicationRecord
  belongs_to :resume, optional: true
end
