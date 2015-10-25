class CreateWagers < ActiveRecord::Migration
  def change
    create_table :wagers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :scenario, index: true, foreign_key: true
      t.boolean :vote
      t.float :amount

      t.timestamps null: false
    end
  end
end
