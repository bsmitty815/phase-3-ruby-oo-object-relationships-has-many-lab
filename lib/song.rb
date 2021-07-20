
class Song

    @@all = []
    
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        artist.name if artist #returns the artist name if it is the artist
    end
end