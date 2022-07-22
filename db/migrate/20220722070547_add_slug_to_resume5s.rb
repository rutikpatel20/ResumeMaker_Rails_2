class AddSlugToResume5s < ActiveRecord::Migration[6.1]
  def change
    add_column :resume5s, :slug, :string
    add_index :resume5s, :slug, unique: true
  end
end
