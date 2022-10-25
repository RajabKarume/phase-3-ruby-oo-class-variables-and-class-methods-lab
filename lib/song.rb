class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count+=1
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
        uniq_genre = @@genres.uniq
        new_harsh = {}
        uniq_genre.each do |gnr| new_harsh["#{gnr}"]=@@genres.count(gnr) end
        new_harsh
    end
    def self.artist_count
        uniq_artist = @@artists.uniq
        new_harsh = {}
        uniq_artist.each do |art| new_harsh["#{art}"]=@@artists.count(art) end
        new_harsh
    end

end