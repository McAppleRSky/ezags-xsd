# encoding: utf-8

class GetServiceStatusResponseMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'GetServiceStatusResponse'

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
    annonymus_type 'GetServiceStatusResponse::MessageData'

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
    annonymus_type 'GetServiceStatusResponse::MessageData::AppData'

    # @return [GetServiceStatusResponseObjMapper]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :get_service_status_response_obj
    # @return [SignatureTypeMapper]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :signature
  end

end
