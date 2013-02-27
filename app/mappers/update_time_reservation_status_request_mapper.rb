# encoding: utf-8

class UpdateTimeReservationStatusRequestMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'UpdateTimeReservationStatusRequest'

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
    annonymus_type 'UpdateTimeReservationStatusRequest::MessageData'

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
    annonymus_type 'UpdateTimeReservationStatusRequest::MessageData::AppData'

    # @return [UpdateTimeReservationStatusRequestObjMapper]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :update_time_reservation_status_request_obj
    # @return [SignatureTypeMapper]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :signature
  end

end
