class CreateSitios < ActiveRecord::Migration
  def change
    create_table :sitios do |t|
      t.string :NombreBase
      t.string :NombreTitular
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
