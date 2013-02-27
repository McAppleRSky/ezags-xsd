# encoding: utf-8

class DsaKeyValueTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DSAKeyValueType'

  # @return [CryptoBinary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :p
  # @return [CryptoBinary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :q
  # @return [CryptoBinary]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :g
  # @return [CryptoBinary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :y
  # @return [CryptoBinary]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :j
  # @return [CryptoBinary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :seed
  # @return [CryptoBinary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :pgen_counter

end
