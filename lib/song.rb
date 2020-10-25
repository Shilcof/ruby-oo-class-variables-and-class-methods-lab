class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        output = {}
        @@genres.each{ |genre| 
            output[genre] ||= 0
            output[genre] += 1
        }
        output
    end

    def self.artist_count
        output = {}
        @@artists.each{ |artist| 
            output[artist] ||= 0
            output[artist] += 1
        }
        output
    end

end