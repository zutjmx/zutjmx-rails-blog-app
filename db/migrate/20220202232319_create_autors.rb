class CreateAutors < ActiveRecord::Migration[7.0]
  def change
    create_table :autors do |t|
      t.string :nombre
      t.string :email

      t.timestamps
    end
  end
end
