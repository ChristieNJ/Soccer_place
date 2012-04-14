class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :texto
      t.integer :calificacion
      t.references :locals

      t.timestamps
    end
    add_index :comentarios, :locals_id
  end
end
