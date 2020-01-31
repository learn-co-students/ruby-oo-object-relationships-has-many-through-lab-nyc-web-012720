class Artist
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def name
		@name
	end

	def name=(name)
		@name=name
	end

	def self.all
		@@all
	end

	def songs
		return Song.all.select{|e| e.artist== self }
	end

	def new_song(name, genre)
		Song.new(name, self, genre)
	end

	def genres
		result = []
		temp = Song.all.select{|e| e.artist== self }
		temp.each{|e| result << e.genre}
		return result.uniq
	end


end
