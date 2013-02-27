# encoding: utf-8

class RsaKeyValueTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'RSAKeyValueType'

  # @return [CryptoBinary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :modulus
  # @return [CryptoBinary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :exponent

end
