class CreateTaxis < ActiveRecord::Migration
  def change
    create_table :taxis do |t|
      t.string :nombreBase
      t.string :nombreTitular
      t.string :latitud
      t.string :longitud

      t.timestamps null: false
    end
  end
end
