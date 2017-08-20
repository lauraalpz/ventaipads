class CreateVentaipads < ActiveRecord::Migration[5.1]
  def change
    create_table :ventaipads do |t|
      t.integer :precio
      t.string :modelo
      t.string :color
      t.integer :cantidad
      t.integer :memoria

      t.timestamps
    end
  end
end
