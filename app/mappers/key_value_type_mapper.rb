# encoding: utf-8

class KeyValueTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'KeyValueType'

  # @return [DSAKeyValueTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :dsa_key_value
  # @return [RSAKeyValueTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :rsa_key_value

end
