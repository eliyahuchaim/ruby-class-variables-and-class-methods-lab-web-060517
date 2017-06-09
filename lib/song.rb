# require 'pry'

class Song

@@artists = []
@@genres = []
@@count = 0

attr_accessor :name, :artist, :genre

def genres
  @@genres
end

def artists
  @@artists
end

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count +=1
  @@genres << genre #if !@@genre.include?(genre)
  @@artists << artist #if !@@artist.include?(artist)

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

  @@genres.each_with_object({}) do |genre, genre_hash|
    if genre_hash[genre] == nil
      genre_hash[genre] = 1
    else
      genre_hash[genre] +=1
    end
  end
end






























def self.artist_count
  @@artists.each_with_object({}) do |artist, artists_hash|
    if artists_hash.include?(artist)
        artists_hash[artist] +=1
    else
      artists_hash[artist] = 1
    end
  end
end







end


# Pry.start
