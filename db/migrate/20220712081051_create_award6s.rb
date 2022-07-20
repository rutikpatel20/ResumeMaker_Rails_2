class CreateAward6s < ActiveRecord::Migration[6.1]
  def change
    create_table :award6s do |t|
      t.string :award6
      t.timestamps
    end
  end
end
