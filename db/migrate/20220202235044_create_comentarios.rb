class CreateComentarios < ActiveRecord::Migration[7.0]
  def change
    create_table :comentarios do |t|
      t.string :nombre
      t.string :texto
      t.references :articulo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
