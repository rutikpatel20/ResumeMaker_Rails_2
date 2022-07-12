class AddResume3RefToEdu3Exp3 < ActiveRecord::Migration[6.1]
  def change
    add_reference :education3s, :resume3
    add_reference :experience3s, :resume3
  end
end
