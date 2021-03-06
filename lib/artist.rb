class Artist

  attr_accessor :name, :songs, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    genre_array = []
    @songs.each do |song|
      genre_array << song.genre
    end
    genre_array
  end


end
