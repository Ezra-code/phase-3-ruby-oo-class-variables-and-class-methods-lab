require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre

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
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end


ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
richard = Song.new("99 Problems", "Jay-Z", "rap")
newer = Song.new("99 Problems", "beyonce", "amapiano")
alisson = Song.new("99 Problems", "rihanna", "reggae")

puts Song.genre_count