# encoding: utf-8

class RetrievalMethodTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'RetrievalMethodType'

  # @return [TransformsTypeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :transforms

end
