

class Artist

    @@all = []
    
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end  
    
    def songs
        Song.all.select {|song| song.artist == self} # returns all songs that are authociated with that artist
    end

    def add_song(song)
        song.artist = self #takes in an arugment song and then checks if the song name is assocaited with the artist/self
    end

    def add_song_by_name(name)
        song = Song.new(name) #takes in an argument on a song name and creates a new song
        song.artist = self #then sets that songs artist equal the artists being past thought/self
    end

    def self.song_count
        Song.all.count #returns the total number of songs associated to self
    end



end