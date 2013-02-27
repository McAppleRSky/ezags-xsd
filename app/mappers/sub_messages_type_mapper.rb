# encoding: utf-8

class SubMessagesTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SubMessagesType'

  # Описание заявки пакета
  # @return [SubMessageTypeMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :sub_message

end
