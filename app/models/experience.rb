class Experience < ApplicationRecord
  belongs_to :resume, optional: true
end
