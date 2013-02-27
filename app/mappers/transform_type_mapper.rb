# encoding: utf-8

class TransformTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'TransformType'

  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :x_path

end
