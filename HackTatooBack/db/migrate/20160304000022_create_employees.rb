class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :token
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
