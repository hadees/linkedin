module LinkedIn
  class PhoneNumber
    include ROXML
    xml_convention {|val| val.gsub("_","-") }
    xml_reader :phone_type
    xml_reader :phone_number
  end
end
