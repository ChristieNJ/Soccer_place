class CreateCanchaFutbols < ActiveRecord::Migration
  def change
    create_table :cancha_futbols do |t|
      t.string :nombre
      t.string :caracteristicas
      t.string :tarifa
      t.string :promocion
      t.references :turnos
      t.references :locals
      t.references :comentarios

      t.timestamps
    end
    add_index :cancha_futbols, :turnos_id
    add_index :cancha_futbols, :locals_id
    add_index :cancha_futbols, :comentarios_id
  end
end
