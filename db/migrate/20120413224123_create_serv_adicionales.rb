class CreateServAdicionales < ActiveRecord::Migration
  def change
    create_table :serv_adicionales do |t|
      t.string :Tipo
      t.string :descripcion
      t.decimal :tarifa

      t.timestamps
    end
  end
end
