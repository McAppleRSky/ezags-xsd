# encoding: utf-8

class SignatureTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignatureType'

  # @return [SignedInfoTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :signed_info
  # @return [SignatureValueTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :signature_value
  # @return [KeyInfoTypeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :key_info
  # @return [ObjectTypeMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :object

end
