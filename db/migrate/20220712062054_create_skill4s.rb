class CreateSkill4s < ActiveRecord::Migration[6.1]
  def change
    create_table :skill4s do |t|
      t.string :skill4
      t.timestamps
    end
  end
end
