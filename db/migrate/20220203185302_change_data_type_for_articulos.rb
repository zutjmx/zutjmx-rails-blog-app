class ChangeDataTypeForArticulos < ActiveRecord::Migration[7.0]
  def change
    change_column :articulos, :categoria_id, :text
  end
end
