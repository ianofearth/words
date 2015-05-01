require('sinatra')
require('sinatra-contrib')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')

get('/') do
	erb(:index)
end

get('/words/new') do
	erb(:words_form)
end

get('/words') do
	@words = Word.all()
	erb(:words)
end


	
end