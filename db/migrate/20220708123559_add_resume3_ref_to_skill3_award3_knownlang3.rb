class AddResume3RefToSkill3Award3Knownlang3 < ActiveRecord::Migration[6.1]
  def change
    add_reference :skill3s, :resume3
    add_reference :award3s, :resume3
    add_reference :knownlang3s, :resume3
  end
end
