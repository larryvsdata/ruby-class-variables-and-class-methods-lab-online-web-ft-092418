class Song
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre
  @@count=0
  @@genres=[]
  @@artists=[]
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    
   self.add_artist(artist)
  self.add_genre(genre)
    
    
  end
  
  def self.count
    @@count
  end
  
  def add_artist(artist)
    @@artists.push(artist)
  end

  def self.artists
    @@artists.uniq
  end

  def add_genre(genre)
    @@genres.push(genre)
  end

  def self.genres
    @@genres.uniq
  end

  
  
 
end