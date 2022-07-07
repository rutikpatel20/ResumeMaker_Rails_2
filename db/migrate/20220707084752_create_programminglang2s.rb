class CreateProgramminglang2s < ActiveRecord::Migration[6.1]
  def change
    create_table :programminglang2s do |t|
      t.string :programminglang2
      t.timestamps
    end
  end
end
