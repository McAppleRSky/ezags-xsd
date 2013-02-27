# encoding: utf-8

class SendServiceOfDivorceRequestMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'SendServiceOfDivorceRequest'

  # Служебный блок атрибутов СМЭВ
  # @return [MessageTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message
  # @return [MessageDataMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message_data

  class MessageData
    include XmlSchemaMapper
    schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
    annonymus_type 'SendServiceOfDivorceRequest::MessageData'

    # @return [AppDataMapper]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :app_data
    # Блок вложений
    # @return [AppDocumentTypeMapper]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :app_document
  end

  class MessageData::AppData
    include XmlSchemaMapper
    schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
    annonymus_type 'SendServiceOfDivorceRequest::MessageData::AppData'

    # @return [SendServiceOfDivorceRequestObjMapper]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :send_service_of_divorce_request_obj
    # @return [SignatureTypeMapper]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :signature
  end

end
