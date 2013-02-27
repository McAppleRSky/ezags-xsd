# encoding: utf-8

class TransformsTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'TransformsType'

  # @return [TransformTypeMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :transform

end
