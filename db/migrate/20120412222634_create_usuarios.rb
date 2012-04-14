class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :tip_persona
      t.string :nombre
      t.string :apellidos
      t.string :sexo
      t.string :tip_doc
      t.string :nro_doc
      t.string :correo
      t.string :pass
      t.string :fec_nac
      t.string :celular

      t.timestamps
    end
  end
end
