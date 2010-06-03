module LinkedIn
  class ImAccount 
    include ROXML
    xml_convention {|val| val.gsub("_","-") }
    xml_reader :im_account_type
    xml_reader :im_account_name
  end
end
