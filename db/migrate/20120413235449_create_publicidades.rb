class CreatePublicidades < ActiveRecord::Migration
  def change
    create_table :publicidades do |t|
      t.string :titulo
      t.string :contenido
      t.string :FecInicio
      t.string :FecFin
      t.decimal :Tarifa
      t.integer :num_clicks
      t.integer :ubicacion

      t.timestamps
    end
  end
end
