require 'SecureRandom'

class Url < ActiveRecord::Base

	def shorten 
		
		p SecureRandom.hex(8)

	end 
end
