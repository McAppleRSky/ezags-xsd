# encoding: utf-8

class KeyInfoTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'KeyInfoType'

  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :key_name
  # @return [KeyValueTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :key_value
  # @return [RetrievalMethodTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :retrieval_method
  # @return [X509DataTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :x509_data
  # @return [PGPDataTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :pgp_data
  # @return [SPKIDataTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :spki_data
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :mgmt_data

end
