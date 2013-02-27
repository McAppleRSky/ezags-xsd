# encoding: utf-8

class RsaKeyValueTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'RSAKeyValueType'

  # @return [CryptoBinary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :modulus
  # @return [CryptoBinary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :exponent

end
