# encoding: utf-8

class PacketIdsTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'PacketIdsType'

  # Идентификатор заявки пакета
  # @return [PacketIdTypeMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :id

end
