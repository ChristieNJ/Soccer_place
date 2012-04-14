class CreateEventoDeportivos < ActiveRecord::Migration
  def change
    create_table :evento_deportivos do |t|
      t.string :nombre
      t.string :premio
      t.integer :CantidadLinEq
      t.string :plazoinscripcion

      t.timestamps
    end
  end
end
