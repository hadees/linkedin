module LinkedIn
  directory = File.expand_path(File.dirname(__FILE__))
  autoload :Profile, File.join(directory, 'profile')  
  class Comment
    include ROXML
    xml_convention {|val| val.gsub("_","-") }
    xml_reader :sequence_number
    xml_reader :comment
    xml_reader :person, :as => Profile
  end
end
