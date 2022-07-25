class CreateSkill3s < ActiveRecord::Migration[6.1]
  def change
    create_table :skill3s do |t|
      t.string :skill3
      t.timestamps
    end
  end
end
