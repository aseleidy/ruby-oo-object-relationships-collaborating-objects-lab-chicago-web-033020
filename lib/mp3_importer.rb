class MP3Importer 
  attr_reader :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    Dir.each_child(@path) {|x| puts x } 
    
    # Dir.open(@path).each do |filename| 
    #   require filename 
    # end 
  end 
end 