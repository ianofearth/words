require('sinatra')
require('sinatra-contrib')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')

get('/') do
	erb(:index)
end


	
end