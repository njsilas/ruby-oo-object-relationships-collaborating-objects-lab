class MP3Importer
  attr_accessor :files, :path
    
    def initialize(files)
        
        @path = "./spec/fixtures/mp3s"
    end
   
    
    def files
        @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
    end
    def import
        files.each do |uno_songo|
            Song.new_by_filename(uno_songo)
        end
    end
end
