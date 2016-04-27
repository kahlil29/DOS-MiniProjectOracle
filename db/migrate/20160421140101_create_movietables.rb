class CreateMovietables < ActiveRecord::Migration
  def change
    create_table :movietables do |t|
      t.string :name
      t.integer :year
      t.string :actor1
      t.string :actor2
      t.string :actor3

      t.timestamps null: false
    end
  end
end
