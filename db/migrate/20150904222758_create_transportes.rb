class CreateTransportes < ActiveRecord::Migration
  def change
    create_table :transportes do |t|
      t.string :parada
      t.string :ruta
      t.string :organismo
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
