

get '/' do
  @url = Url.all
 	erb :"static/index"
end

post '/urls' do
  @url = Url.create(long_url: params[:long_url], short_url: Url.generate_short_url(params[:long_url]))
  redirect '/'
end

# i.e. /q6bda

get '/:short_url' do
  @url = Url.find_by(short_url: params[:short_url])
  redirect "http://" +@url.long_url
end

get '/' do 
	puts "[LOG] Getting /"
	puts "[LOG] Params: #{params.inspect}"
	erb :index 
end 