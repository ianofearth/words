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

post('/words') do
	word = params.fetch('word') #first word in this line may be name
	Word.new(word).save() #word may be name here too
	@words = Word.all()
	ern(:success)
end



	
end