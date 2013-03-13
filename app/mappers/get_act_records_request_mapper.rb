# encoding: utf-8

class GetActRecordsRequestMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/retro/public/GetResultsService.xsd', File.dirname(__FILE__))
  type 'GetActRecordsRequest'

  # Служебный блок атрибутов СМЭВ
  # @return [MessageTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message
  # @return [MessageDataMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message_data

  class MessageData
    include XmlSchemaMapper
    schema File.expand_path('../../vendor/ezags-protocols/retro/public/GetResultsService.xsd', File.dirname(__FILE__))
    annonymus_type 'GetActRecordsRequest::MessageData'

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
    schema File.expand_path('../../vendor/ezags-protocols/retro/public/GetResultsService.xsd', File.dirname(__FILE__))
    annonymus_type 'GetActRecordsRequest::MessageData::AppData'

    # @return [GetActRecordsRequestObjMapper]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :get_act_records_request_obj
  end

end
