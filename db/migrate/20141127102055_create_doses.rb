class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.references :cocktail, index: true
      t.references :ingredient, index: true
      t.integer :amount

      t.timestamps
    end
  end
end
