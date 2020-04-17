class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :condition
      t.string :make
      t.integer :size
      t.boolean :active, default: true
      t.float :price
      t.text :description
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
