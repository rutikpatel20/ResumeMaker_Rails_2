class CreateSkill6s < ActiveRecord::Migration[6.1]
  def change
    create_table :skill6s do |t|
      t.string :skill6
      t.timestamps
    end
  end
end
