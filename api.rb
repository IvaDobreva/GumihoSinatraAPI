require 'sinatra'
require 'sinatra/advanced_routes'
require 'sinatra/activerecord'
require "sinatra/reloader" if development?

##GET request

get '/' do 
	'GET'
end 

post '/post' do
	'POST'
end

put '/put' do 
	'PUT'
end

delete '/delete' do 
	'DELETE'
end

Sinatra::Application.each_route do |route|
	puts route.verb + " " + route.path
end
