class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :city
      t.references :state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
