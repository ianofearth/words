require('rspec')
require('definition')
require('word')

describe(Definition) do
	before() do
		Definition.clear()
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

	describe('.clear') do
		it('empties out all saved definitions') do
			Definition.new("is really cool").save()
			Definition.clear()
			expect(Definition.all()).to(eq([]))
		end
	end

	describe('#definition') do
		it('returns the definition of a word') do
			test_definition = Definition.new("is really cool")
			test_definition.save()
			expect(test_definition.definition()).to(eq("is really cool"))
		end
	end

	describe('#id') do
		it('returns the id of the definition') do
			test_definition = Definition.new("is really cool")
			test_definition.save()
			expect(test_definition.id()).to(eq(1))
		end
	end

	describe('.find') do
		it('returns a definition by its id') do
			test_definition = Definition.new("is really cool")
			test_definition.save()
			test_definition2 = Definition.new("is bad at ruby")
			test_definition2.save()
			expect(Definition.find(test_definition.id())).to(eq(test_definition))
		end
	end




end