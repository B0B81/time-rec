class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.string :description
      t.integer :ordernumber
      t.date :date
      t.time :begin_time
      t.time :end_time
      t.integer :user_id
      t.belongs_to :workfile, foreign_key: true

      t.timestamps
    end
  end
end
