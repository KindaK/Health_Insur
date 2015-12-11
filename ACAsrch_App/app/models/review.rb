class Review < ActiveRecord::Base
	#validates :statement, length: {minimum: 5, message "Your review is too short. Please add context."}
	belongs_to :user
end
