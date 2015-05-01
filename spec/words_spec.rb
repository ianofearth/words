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




end
