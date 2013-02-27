# encoding: utf-8

class SignaturePropertiesTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SignaturePropertiesType'

  # @return [SignaturePropertyTypeMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :signature_property

end
