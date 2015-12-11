class AddForeignKeysToReviews < ActiveRecord::Migration
  def change
  	change_table :reviews do |t|

  	 t.references :user, index: true
  	 t.references :search, index: true
  	end
  	 add_foreign_key :reviews, :users
  	 add_foreign_key :reviews, :searches
  end
end
