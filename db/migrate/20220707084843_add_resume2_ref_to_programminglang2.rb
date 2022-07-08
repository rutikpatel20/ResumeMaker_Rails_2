class AddResume2RefToProgramminglang2 < ActiveRecord::Migration[6.1]
  def change
    add_reference :programminglang2s, :resume2
  end
end
