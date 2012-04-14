class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.text :texto
      t.integer :calificacion
      t.references :canchas_futbols

      t.timestamps
    end
    add_index :coments, :canchas_futbols_id
  end
end
