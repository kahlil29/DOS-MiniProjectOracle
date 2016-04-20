class CreateTheatres < ActiveRecord::Migration
  def change
    create_table :theatres do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
