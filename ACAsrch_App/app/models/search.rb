class Search < ActiveRecord::Base
	belongs_to :user

	def self.search_for(query)
		where('state LIKE :query OR county LIKE :query OR coverage LIKE :query', query: "%#{query}%")		
	end
end