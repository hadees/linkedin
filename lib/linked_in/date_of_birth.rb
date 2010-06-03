module LinkedIn
  class DateOfBirth
    include ROXML
    xml_convention {|val| val.gsub("_","-") }
    xml_reader :day
    xml_reader :month
    xml_reader :year
  end
end
