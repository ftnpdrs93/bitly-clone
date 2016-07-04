
class Url < ActiveRecord::Base

validates :long_url, presence: true, uniqueness: true

	def  self.generate_short_url(url) 
		
		url.hash.abs.to_s(2)

	end 
end
