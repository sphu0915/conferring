class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :name
      t.string :descritpion
      t.date :date

      t.timestamps null: false
    end
  end
end
