class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :type
      t.text :location
      t.string :category

      t.timestamps #created_at, updated_at
    end
  end
end
