class CreateCanchasFutbols < ActiveRecord::Migration
  def change
    create_table :canchas_futbols do |t|
      t.string :nombre
      t.string :caracteristicas
      t.decimal :tarifa
      t.string :promocion
      t.references :turnos
      t.references :locals

      t.timestamps
    end
    add_index :canchas_futbols, :turnos_id
    add_index :canchas_futbols, :locals_id
  end
end
