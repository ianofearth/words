require('rspec')
require('word')
require('definition')

describe(Word) do
	before() do
		Word.clear()
	end

	describe('#word') do
		it('returns a word entered') do
			test_word = Word.new("ian")
			expect(test_word.word()).to(eq("ian"))
		end
	end

	describe('#id') do
		it('returns the id of the word') do
			test_word = Word.new("ian")
			expect(test_word.id()).to(eq(1))
		end
	end

	describe('#dictionary') do
		it('initially returns an empty array of cars for the dictionary') do
			test_word = Word.new("ian")
			expect(test_word.dictionary()).to(eq([]))
		end
	end

	describe('.all') do
		it('is empty at first') do
			expect(Word.all()).to(eq([]))
		end
	end

	describe('#save') do
		it('adds a word to the array of saved words') do
			test_word = Word.new("ian")
			test_word.save()
			expect(Word.all()).to(eq([test_word]))
		end
	end

	describe('.clear') do
		it('empties out all saved words from the array') do
			Word.new("ian").save()
			Word.clear()
			expect(Word.all()).to(eq([]))
		end
	end

	describe('.find') do
		it('returns a word by its id number') do
			test_word = Word.new("ian")
			test_word.save()
			test_word2 = Word.new("bevel")
			test_word2.save()
			expect(Word.find(test_word.id())).to(eq(test_word))
		end
	end

	describe('#add_definition') do
		it('adds a new definition to a word') do
			test_word = Word.new("ian")
			test_definition = Definition.new("is really cool")
			test_word.add_definition(test_definition)
			expect(test_word.dictionary()).to(eq([test_definition]))
		end
	end
end
