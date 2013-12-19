class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :user_id
      t.date :min_date
      t.date :max_date

      t.timestamps
    end
  end
end
