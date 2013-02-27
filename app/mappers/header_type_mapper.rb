# encoding: utf-8

class HeaderTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'HeaderType'

  # Уникальный идентификатор узла
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :node_id
  # Идентификатор сообщения
  # @return [IdType]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message_id
  # Метка времени получения запроса СМЭВ.ом
  # @return [DateTime]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :time_stamp
  # Идентификатор класса сообщения
  # @return [MessageClassType]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message_class
  # Блок идентификаторов заявок пакета
  # @return [PacketIdsTypeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :packet_ids

end
