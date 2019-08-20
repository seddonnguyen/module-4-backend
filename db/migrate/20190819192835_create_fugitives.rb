class CreateFugitives < ActiveRecord::Migration[5.2]
  def change
    create_table :fugitives do |t|
      t.string :image
      t.string :name
      t.string :height
      t.string :weight
      t.string :race
      t.string :hair
      t.string :eyes
      t.string :sex
      t.string :captured

      t.timestamps
    end
  end
end
