# encoding: utf-8

class TransformsTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'TransformsType'

  # @return [TransformTypeMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :transform

end
