class Song

  @@artists = []
  @@genres = []
  @@count = 0


  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
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
    @@genres.each_with_object(genre_count = Hash.new(0)) do |genre|
      genre_count[genre] += 1
    end
    genre_count
  end

  def self.artist_count
    @@artists.each_with_object(artist_count = Hash.new(0)) do |artist|
      artist_count[artist] += 1
    end
    artist_count
  end


end
