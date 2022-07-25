class CreateAward5s < ActiveRecord::Migration[6.1]
  def change
    create_table :award5s do |t|
      t.string :award5
      t.timestamps
    end
  end
end
