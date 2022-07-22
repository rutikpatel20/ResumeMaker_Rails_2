class AddSlugToResume3s < ActiveRecord::Migration[6.1]
  def change
    add_column :resume3s, :slug, :string
    add_index :resume3s, :slug, unique: true
  end
end
