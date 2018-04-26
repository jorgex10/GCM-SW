class User < ActiveRecord::Base
	
	def display_name
		"#{self.first_name} #{self.last_name}"
	end

end