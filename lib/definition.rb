class Definition
	@@definitions = []

	define_method(:initialize) do |definition|
		@definition = definition
		@id = @@definitions.length().+(1)
		@dictionary = [] ##added for troubleshoot
	end

	define_method(:dictionary) do #added for troubleshoot
		@dictionary
	end

	define_singleton_method(:all) do
		@@definitions
	end

	define_method(:save) do
		@@definitions.push(self)
	end

	define_singleton_method(:clear) do
		@@definitions = []
	end

	define_method(:definition) do
		@definition
	end

	define_method(:id) do
		@id
	end

	define_singleton_method(:find) do |identification|
		found_definition = nil
		@@definitions.each do |definition|
			if definition.id().eql?(identification.to_i())
				found_definition = definition
			end
		end
		found_definition
	end
end
