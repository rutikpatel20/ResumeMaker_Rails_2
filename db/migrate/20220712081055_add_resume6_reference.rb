class AddResume6Reference < ActiveRecord::Migration[6.1]
  def change
    add_reference :skill6s, :resume6
    add_reference :award6s, :resume6
    add_reference :knownlang6s, :resume6
    add_reference :education6s, :resume6
    add_reference :experience6s, :resume6
  end
end
