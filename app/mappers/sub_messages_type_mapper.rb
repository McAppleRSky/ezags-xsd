# encoding: utf-8

class SubMessagesTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SubMessagesType'

  # Описание заявки пакета
  # @return [SubMessageTypeMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :sub_message

end
