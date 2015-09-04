class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :parada
      t.string :ruta
      t.string :organismo
      t.string :latitud
      t.string :longitud

      t.timestamps null: false
    end
  end
end
