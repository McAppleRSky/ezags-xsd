# encoding: utf-8

class BaseMessageTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'BaseMessageType'

  # Служебный блок атрибутов СМЭВ
  # @return [MessageTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message
  # Блок-обертка данных СМЭВ
  # @return [MessageDataTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message_data

end
