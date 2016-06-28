# require_relative '../../../app/models/url'

class CreateUrls < ActiveRecord::Migration
	def change
		create_table :urls do |t| 
			t.string :long_urls 
			t.string :short_url
			t.timestamp
		end 
	end
end
