class AddResume2RefToEdu2Exp2 < ActiveRecord::Migration[6.1]
  def change
    add_reference :education2s, :resume2
    add_reference :experience2s, :resume2
  end
end
