require('rspec')
require('words')
require('definitions')

describe(Words) do
	

	describe('#word') do
		it('returns a word entered') do
			test_word = Words.new("ian")
			expect(test_word.word()).to(eq("ian"))
		end
	end

	describe('#id') do
		it('returns the id of the word') do
			test_word = Words.new("ian")
			expect(test_word.id()).to(eq(1))
		end
	end

	describe('#dictionary') do
		it('initially returns an empty array of cars for the dictionary') do
			test_word = Words.new("ian")
			expect(test_word.dictionary()).to(eq([]))
		end
	end

	describe('.all') do
		it('is empty at first') do
			expect(Words.all()).to(eq([]))
		end
	end

	# describe('#save') do
	# 	it('adds a word to the array of saved words') do
	# 		test_word = Words.new("ian")
	# 		test_word.save()
	# 		expect(Words.all())




end
