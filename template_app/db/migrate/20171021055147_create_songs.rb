class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :nombre
      t.string :genero
      t.time :duracion
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
