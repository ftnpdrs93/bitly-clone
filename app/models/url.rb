

class Url < ActiveRecord::Base

	def  self.generate_short_url 
		self.hash.abs.to_s(36)
	end 
end
