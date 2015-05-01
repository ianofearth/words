class Word
	@@word = []

	define_method(:initialize) do |instance|
		@word = instance
		@id = @@word.length().+(1)
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

	# define_singleton_method(:all) do
	# 	@@word
	# end

	# define_method(:save) do
	# 	@@word.push(self)
	# end

	# define_singleton_method(:clear) do
	# 	@@word = []
	# end
 



end