class AddCategoriaIdToArticulos < ActiveRecord::Migration[7.0]
  def change
    add_column :articulos, :categoria_id, :integer
    add_index :articulos, :categoria_id
  end
end
