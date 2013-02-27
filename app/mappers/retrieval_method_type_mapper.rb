# encoding: utf-8

class RetrievalMethodTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'RetrievalMethodType'

  # @return [TransformsTypeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :transforms

end
