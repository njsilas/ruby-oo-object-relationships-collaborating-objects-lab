
class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    
    end
    def self.new_by_filename(filename)
        file = filename.split(" - ")
        song = file[1]
        artist = file[0]
        nu_so = self.new(song)
        nu_so.artist_name = artist
      
      
       
       nu_so
         
    end
    def artist_name=(band)
        

     self.artist = Artist.find_or_create_by_name(band)
       artist.add_song(self)
    end
end