class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.references :brewery, index: true
      t.references :style, index: true
      t.decimal :abv

      t.timestamps
    end
  end
end
