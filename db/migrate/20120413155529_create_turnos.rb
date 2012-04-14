class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.string :nombre
      t.integer :lunes
      t.integer :martes
      t.integer :miercoles
      t.integer :jueves
      t.integer :viernes
      t.integer :sabado
      t.integer :domingo
      t.string :HoraIni
      t.string :HoraFin

      t.timestamps
    end
  end
end
