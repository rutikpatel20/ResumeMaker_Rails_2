class CreateAward4s < ActiveRecord::Migration[6.1]
  def change
    create_table :award4s do |t|
      t.string :award4
      t.timestamps
    end
  end
end
