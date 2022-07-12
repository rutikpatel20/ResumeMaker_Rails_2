class CreateKnownlang4s < ActiveRecord::Migration[6.1]
  def change
    create_table :knownlang4s do |t|
      t.string :knownlang4
      t.timestamps
    end
  end
end
