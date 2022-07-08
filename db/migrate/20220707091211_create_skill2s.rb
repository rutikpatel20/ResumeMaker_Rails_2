class CreateSkill2s < ActiveRecord::Migration[6.1]
  def change
    create_table :skill2s do |t|
      t.string :skill2
      t.timestamps
    end
  end
end
