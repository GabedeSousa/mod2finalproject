class CreateExchanges < ActiveRecord::Migration[6.0]
  def change
    create_table :exchanges do |t|
      t.references :listing, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
