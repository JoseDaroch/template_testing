class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :nombre
      t.string :descripcion
      t.string :genero
      t.string :lugar_origen
      t.date :periodo_inicio
      t.date :periodo_fin
      t.string :integrantes
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :artists, [:user_id, :created_at]
  end
end
