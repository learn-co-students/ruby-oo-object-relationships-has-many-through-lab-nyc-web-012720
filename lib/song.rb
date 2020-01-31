class Song

	@@all = []

	def initialize(name, artist = nil, genre = nil)
		@name = name
		@artist = artist
		@genre = genre
		@@all << self
	end

	def name
		@name
	end

	def name=(name)
		@name=name
	end

	def artist
		@artist
	end

	def artist=(artist)
		@artist=artist
	end

	def genre
		@genre
	end

	def genre=(genre)
		@genre=genre
	end

	def self.all
		@@all
	end
	
end
