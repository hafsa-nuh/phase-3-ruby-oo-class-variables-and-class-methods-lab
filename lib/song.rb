class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists =[]
    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
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
        # genre_count = %i[name value].each_with_index.to_h == expected: {"pop"=>1, "rap"=>2}
            # got: {:name=>0, "pop"=>1, "rap"=>2, :value=>1}
        genre_count = {} 
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] +=1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end
    def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end