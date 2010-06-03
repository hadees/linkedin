module LinkedIn
  class TwitterAccount
    include ROXML
    xml_convention {|val| val.gsub("_","-") }
    xml_reader :provider_account_id
    xml_reader :provider_account_name
  end
end
