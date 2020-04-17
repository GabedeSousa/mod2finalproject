class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :model
      t.string :image
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
