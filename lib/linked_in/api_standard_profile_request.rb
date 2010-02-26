module LinkedIn
  class ApiStandardProfileRequest
    include ROXML
    xml_convention {|val| val.gsub("_","-") }
    xml_reader :url
    xml_reader :headers, :as => {:key => 'name', :value => 'value'}, :in => 'headers/http-header'
    xml_reader :token_name, :from => 'headers/http-header/name'
    xml_reader :token_value, :from => 'headers/http-header/value'
  end
end
