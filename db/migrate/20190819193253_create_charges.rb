class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.string :name
      t.references :fugitive, foreign_key: true

      t.timestamps
    end
  end
end
