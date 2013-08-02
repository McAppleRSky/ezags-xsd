# encoding: utf-8

class ReferenceTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ReferenceType'

  # @return [String]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :include

end
