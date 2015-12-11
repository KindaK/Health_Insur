class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :company
      t.string :coverage
      t.string :state
      t.string :county
      t.string :country

      t.timestamps null: false
    end
  end
end
