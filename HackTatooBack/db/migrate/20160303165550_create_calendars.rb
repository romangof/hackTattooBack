class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.references :client, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true
      t.datetime :picture
      t.boolean :accepted
      t.boolean :taken

      t.timestamps null: false
    end
  end
end
