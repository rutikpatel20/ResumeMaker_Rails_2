class CreateHobby2s < ActiveRecord::Migration[6.1]
  def change
    create_table :hobby2s do |t|
      t.string :hobby2
      t.timestamps
    end
  end
end
