require('rspec')
require('definition')
require('word')

describe(Definition) do
	# before() do
	# 	Definition.clear()
	# end



	describe('#definition') do
		it('returns the definition of a word') do
			test_definition = Definition.new("is really cool")
			test_definition.save()
			expect(test_definition.definition()).to(eq("is really cool"))
		end
	end

	define_singleton_method('.all') do
		it('is empty at first') do
			expect(Definition.all()).to(eq([]))
		end
	end

	describe('#save') do
		it('adds a definition to the array of saved definitions') do
			test_definition = Definition.new("is really cool")
			test_definition.save()
			expect(Definition.all()).to(eq([test_definition]))
		end
	end




end