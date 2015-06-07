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
	if params[:doc]
		'hi'
	else
		'GET'
	end
end	

get '/routes' do
	if params[:doc]

	else
		routes = []
		Sinatra::Application.each_route do |route|
			routes << { :method => route.verb,
				:path => route.path }
		end
		return routes.to_json
	end

end

post '/mess' do
	if params[:doc]

	else
		@message = params['message']
	end
end

put '/put' do
       if params[:doc]

       else	       
		'PUT'
       end
end

delete '/delete' do
       if params[:doc]

       else		       
		'DELETE'
       end
end
