class AddResume5Reference < ActiveRecord::Migration[6.1]
  def change
    add_reference :skill5s, :resume5
    add_reference :award5s, :resume5
    add_reference :knownlang5s, :resume5
    add_reference :education5s, :resume5
    add_reference :experience5s, :resume5
  end
end
