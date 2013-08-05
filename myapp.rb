# myapp.rb
require 'rubygems'
require 'sinatra'
require 'rack'
require 'sinatra/reloader' if development? # gem install sinatra-reloader
require 'haml' # gem install haml

set :server, 'webrick' 
#set :bind, '10.110.162.177'
set :port, '4567'

puts "This is process #{Process.pid}"

get '/' do
	haml :newpage, :layout => false
end

get '/about' do
    haml :about
end

get '/ip' do
    "Your IP address is #{ @env['REMOTE_ADDR'] } "
    "Request ip is #{ request.ip }"
end

get '/pg' do
    
end

not_found do
#status 404
#"sorry, page not found --------- by rfang@vmware.com"
	halt 404, 'page not found'
end


