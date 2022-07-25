class AddSlugToResume4s < ActiveRecord::Migration[6.1]
  def change
    add_column :resume4s, :slug, :string
    add_index :resume4s, :slug, unique: true
  end
end
