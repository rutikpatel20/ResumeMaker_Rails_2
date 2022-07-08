class CreateAward3s < ActiveRecord::Migration[6.1]
  def change
    create_table :award3s do |t|
      t.string :award3
      t.timestamps
    end
  end
end
