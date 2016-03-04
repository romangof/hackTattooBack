class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.references :client, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true
      t.datetime :date
      t.boolean :accepted
      t.boolean :take
      t.string :picture

      t.timestamps null: false
    end
  end
end
