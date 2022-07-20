class CreateKnownlang6s < ActiveRecord::Migration[6.1]
  def change
    create_table :knownlang6s do |t|
      t.string :knownlang6
      t.timestamps
    end
  end
end
