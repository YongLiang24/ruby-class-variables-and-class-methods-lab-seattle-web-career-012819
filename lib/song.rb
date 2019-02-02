require 'pry'
class Song
  @@artists = []
  @@count = 0
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  attr_accessor :name, :artist, :genre
def initialize(name, artist, genre)

  @@count += 1
  @name =name
  @artist = artist
  @genre = genre
  @@artists << artist
  @@genres << genre

end
def self.count
  @@count
end

def self.artists
  @@artists.uniq
end
def self.genres
  @@genres.uniq

end
def self.genre_count
  @@genres.each do |gen|
    if @@genre_count[gen]
      @@genre_count[gen]+=1
    else
      @@genre_count[gen]=1
    end
  end
  return @@genre_count
end

def self.artist_count
  @@artists.each do |gen|
    if @@artist_count[gen]
      @@artist_count[gen]+=1
    else
      @@artist_count[gen]=1
    end
  end
  return @@artist_count
end
end
# binding.pry
