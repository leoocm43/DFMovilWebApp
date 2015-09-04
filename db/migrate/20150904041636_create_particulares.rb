class CreateParticulares < ActiveRecord::Migration
  def change
    create_table :particulares do |t|
      t.string :placa
      t.text :tenencias
      t.text :infracciones
      t.text :verificaciones

      t.timestamps null: false
    end
  end
end
