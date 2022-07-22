class AddSlugToResume6s < ActiveRecord::Migration[6.1]
  def change
    add_column :resume6s, :slug, :string
    add_index :resume6s, :slug, unique: true
  end
end
