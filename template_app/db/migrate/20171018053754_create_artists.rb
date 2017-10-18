class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :nombre
      t.text :descripcion
      t.string :lugar_origen
      t.string :genero
      t.date :periodo_inicio
      t.date :periodo_fin

      t.timestamps
    end
  end
end
