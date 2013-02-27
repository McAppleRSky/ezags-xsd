# encoding: utf-8

class KeyValueTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'KeyValueType'

  # @return [DSAKeyValueTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :dsa_key_value
  # @return [RSAKeyValueTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :rsa_key_value

end
