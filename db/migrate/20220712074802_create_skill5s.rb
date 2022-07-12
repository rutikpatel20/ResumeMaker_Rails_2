class CreateSkill5s < ActiveRecord::Migration[6.1]
  def change
    create_table :skill5s do |t|
      t.string :skill5
      t.timestamps
    end
  end
end
