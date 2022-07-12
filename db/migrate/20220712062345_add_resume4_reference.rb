class AddResume4Reference < ActiveRecord::Migration[6.1]
  def change
    add_reference :skill4s, :resume4
    add_reference :award4s, :resume4
    add_reference :knownlang4s, :resume4
    add_reference :education4s, :resume4
    add_reference :experience4s, :resume4
  end
end
