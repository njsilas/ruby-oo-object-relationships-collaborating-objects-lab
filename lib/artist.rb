require 'pry'
class Artist
    attr_accessor :name, :song, :artist, :add_song
    @@all = []
    
    def initialize(name)
        @name = name
     
        @@all << self
    end

    def self.all
        @@all
        
    end
    def add_song(song)
        song.artist = self
    end
    
    def songs
        Song.all.select {|song| song.artist == self}
    end
    def self.find_or_create_by_name(art_name)
        
        self.all.each do |artist|
            
            if artist.name  == art_name
          return artist
            end
        
            
            
            
            
        end
        self.new(art_name)
        
    end 
    def print_songs
       
        self.songs.collect do |song|
        puts song.name
        end 
        
    end
end