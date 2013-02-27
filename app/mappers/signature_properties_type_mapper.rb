# encoding: utf-8

class SignaturePropertiesTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignaturePropertiesType'

  # @return [SignaturePropertyTypeMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :signature_property

end
