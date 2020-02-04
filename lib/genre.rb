class Genre

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
            binding.pry
        end
    end

    def artists
        self.songs.map do |song|
            song.artist
        end
    end


end