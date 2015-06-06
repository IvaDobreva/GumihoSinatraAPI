#Really basic Sinatra API for testing Gumiho

require 'sinatra'
require 'json'
require 'sinatra/advanced_routes'
require 'sinatra/reloader' if development?


helpers do
#put some helper methods here
end

#Routes need doc param

get '/' do
	'GET'
end	

get '/routes' do
	routes = []
	Sinatra::Application.each_route do |route|
		routes << { :method => route.verb,
			:path => route.path }
	end
	return routes.to_json

end

post '/mess' do
	@message = params['message']
end

put '/put' do 
	'PUT'
end

delete '/delete' do 
	'DELETE'
end
