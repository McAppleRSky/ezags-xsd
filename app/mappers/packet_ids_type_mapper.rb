# encoding: utf-8

class PacketIdsTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'PacketIdsType'

  # Идентификатор заявки пакета
  # @return [PacketIdTypeMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :id

end
