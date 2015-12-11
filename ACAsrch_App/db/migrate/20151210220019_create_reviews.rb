class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :company
      t.integer :membership_yr
      t.string :state
      t.string :coverage
      t.text :statement

      t.timestamps null: false
    end
  end
end
