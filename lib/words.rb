class Words
	@@words = []

	define_method(:initialize) do |word|
		@word = word
		@id = @@words.length().+(1)
		@dictionary = []
	end

	define_method(:word) do
		@word
	end

	define_method(:id) do
		@id
	end

	define_method(:dictionary) do
		@dictionary
	end

	define_singleton_method(:all) do
		@@words
	end




end