require 'csv'
# file = File.open('db/urls', 'r')
# file.each_line do |row|
#     puts row
# endinserts = []
inserts= []
file = File.open('db/urls', 'r')
file.each do |row|
    # row = (http://example.com/fb3b726804f824a9185c57530e),
    #
    inserts << "('#{row.chomp.tr(',();', '')}', '#{SecureRandom.hex(8)}', 0, '#{Time.now}', '#{Time.now}' )"
    # ('www.google.com', 'adsfqwer', 0)
end
sql = "INSERT INTO urls (long_url, short_url, click_count, created_at, updated_at) VALUES " + inserts.join(', ')
Url.connection.execute sql