class Genre
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def name
		@name
	end

	def songs
		return Song.all.select{|e| e.genre== self }
	end

	def self.all
		return @@all
	end

	def artists
		result = []
		temp = Song.all.select{|e| e.genre== self }
		temp.each{|e| result << e.artist}
		return result.uniq
	end
end
