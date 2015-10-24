class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.references :user, index: true, foreign_key: true
      t.integer :radius
      t.boolean :open

      t.timestamps null: false
    end
  end
end
