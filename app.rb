require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')

get('/') do
	@words = Word.all() #test
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
	word = params.fetch('word')
	Word.new(word).save()
	@words = Word.all()
	erb(:success)
end

get('/definitions/:id') do
	@definition = Definition.find(params.fetch('id'))
	erb(:definition)
end

get('/words/:id') do
	@word = Word.find(params.fetch('id').to_i())
	erb(:word)
end

get('/words/:id/definitions/new') do
	@word = Word.find(params.fetch('id').to_i())
	erb(:word_definitions_form)
end

get('/definitions') do
	@definitions = Definition.all()
	erb(:definitions)
end

post('/definitions') do
	definition = params.fetch('definition')
	@definitions = Definition.all()
	@definition = Definition.new(definition)
	@definition.save()
	@word = Word.find(params.fetch('word_id').to_i())
	@word.add_definition(@definition)
	erb(:definitions)
end