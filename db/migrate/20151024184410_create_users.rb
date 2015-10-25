class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.string :wallet_id

      t.timestamps null: false
    end
  end
end
