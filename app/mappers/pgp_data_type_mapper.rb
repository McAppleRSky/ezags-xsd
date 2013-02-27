# encoding: utf-8

class PgpDataTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'PGPDataType'

  # @return [Base64Binary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :pgp_key_id
  # @return [Base64Binary]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :pgp_key_packet

end
