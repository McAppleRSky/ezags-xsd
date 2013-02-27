require 'ezags-xsd/version'
require 'xml_schema_mapper'

Dir[File.expand_path('../../app/mappers', __FILE__) + '/*'].each do |file|
  require file
end

module Ezags
  module Xsd
    # Your code goes here...
  end
end
