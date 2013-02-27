# encoding: utf-8

class PacketIdTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'PacketIdType'

  # Идентификатор сообщения
  # @return [IdType]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message_id
  # Уникальный идентификатор сообщения внутри пакета назначается инициатором взаимодействия
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :sub_request_number

end
