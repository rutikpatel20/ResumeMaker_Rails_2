class CreateKnownlang3s < ActiveRecord::Migration[6.1]
  def change
    create_table :knownlang3s do |t|
      t.string :knownlang3
      t.timestamps
    end
  end
end
