require('rspec')
require('definition')

describe(Definition) do
	before() do
		Definition.clear()
	end

	describe('#definition') do
		it('returns the definition of a word') do
			test_definition = Definition.new("is really cool")
			test_definition.save()
			expect(test_definition.definition()).to(eq("is really cool"))
		end
	end



	
end