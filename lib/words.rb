class Words
	@@words = []

	define_method(:initialize) do |word|
		@word = word
		@id = @@words.length().+(1)
	end

	define_method(:word) do
		@word
	end

	define_method(:id) do
		@id
	end




end