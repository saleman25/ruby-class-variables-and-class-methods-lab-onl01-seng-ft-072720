class Song 

attr_accessor :name, :artist, :genre

@@count = 0 
@@artists = []
@@genres = [] 

def initialize(name, artist, genre) 
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
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
   genres= {}
   @@genres.each do |genre|
      if genres.count(genre)
        genre_count[genre] += 1
      else 
        genre_count[genre] = 1
 end 
end
genre_count
end 
 
 def self.artist_count
   artists= {}
   @@artists.each do |artist|
      if artists.count(artist)
        artist_count[artist] += 1
      else 
        artist_count[artist] = 1
 end 
end
artist_count
end
end