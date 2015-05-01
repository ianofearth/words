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

get('/definitions/:id') do
	@definition = Definition.find(params.fetch('id'))
	erb(:definition)
end

get('/words/:id') do
	@word = Word.find(params.fetch('id')) #need .to_i?
	erb(:word)
end

get('/words/:id/definitions/new') do
	@word = Word.find(params.fetch('id')) #need .to_i?
	erb(:word_definitions_form)
end

