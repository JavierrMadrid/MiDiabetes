class CreateComidas < ActiveRecord::Migration[5.1]
  def change
    create_table :comidas do |t|
      t.string :nombre, null: false, default: ""
      t.float :peso, null: false
      t.float :hidratosxracion, null: false
      t.float :raciones, null: false
      t.text :ingredientes, default: ""

      t.timestamps
    end
  end
end
