class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :nombre
      t.string :lugar_origen
      t.text :descripcion
      t.string :genero
      t.date :periodo_inicio

      t.timestamps
    end
  end
end
