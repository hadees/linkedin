module LinkedIn
  directory = File.expand_path(File.dirname(__FILE__))
  autoload :Profile, File.join(directory, 'profile')
  class Recommendation
    include ROXML
    xml_convention {|val| val.gsub("_","-") }
    xml_reader :id
    xml_reader :recommendation_type
    xml_reader :recommendation_snippet    
    xml_reader :recommendee, :as => Profile
    xml_reader :recommender, :as => Profile
  end
end
