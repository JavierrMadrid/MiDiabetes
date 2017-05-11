class CreateComidas < ActiveRecord::Migration[5.1]
  def change
    create_table :comidas do |t|
      t.string :nombre
      t.float :peso
      t.float :hidratosxracion
      t.float :raciones
      t.text :ingredientes

      t.timestamps
    end
  end
end
