class CreateWorkfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :workfiles do |t|
      t.string :title
      t.text :description
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
