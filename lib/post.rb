


class Post

    @@all = []

    attr_accessor :title, :author

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        author.name if author #returns the author name if it is the artist
    end
end