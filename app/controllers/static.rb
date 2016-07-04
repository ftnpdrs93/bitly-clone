

get '/' do
  @url = Url.all
 	erb :"static/index"
end

post '/urls' do
	@url = Url.find_by(long_url: params[:long_url])

	if @url.nil? 
  	@url = Url.create(long_url: params[:long_url], short_url: Url.generate_short_url(params[:long_url]))
  else 
  	p @url 
  end 
redirect "/lolz/#{@url.long_url}"
end

# i.e. /q6bda
get '/lolz/:long_url' do

  @url = Url.find_by(long_url: params[:long_url])

  erb :"static/lulz"
end 

get '/:short_url' do

  @url = Url.find_by(short_url: params[:short_url])
  @url.click_count += 1
  @url.save
  redirect "http://" + @url.long_url
end



