class CreateAlquilers < ActiveRecord::Migration
  def change
    create_table :alquilers do |t|
      t.string :fecha
      t.string :HoraIni
      t.string :HoraFin
      t.references :cancha_futbol
      t.references :usuarios

      t.timestamps
    end
    add_index :alquilers, :cancha_futbol_id
    add_index :alquilers, :usuarios_id
  end
end
