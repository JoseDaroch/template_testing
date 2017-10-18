class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :nombre
      t.string :genero
      t.date :lanzamiento
      t.int :numero_canciones
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
