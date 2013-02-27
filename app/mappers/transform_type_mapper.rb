# encoding: utf-8

class TransformTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'TransformType'

  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :x_path

end
