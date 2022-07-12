class CreateKnownlang5s < ActiveRecord::Migration[6.1]
  def change
    create_table :knownlang5s do |t|
      t.string :knownlang5
      t.timestamps
    end
  end
end
