# encoding: utf-8

class GetActRecordsResponseMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/retro/public/GetResultsService.xsd', File.dirname(__FILE__))
  type 'GetActRecordsResponse'

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
    annonymus_type 'GetActRecordsResponse::MessageData'

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
    annonymus_type 'GetActRecordsResponse::MessageData::AppData'

    # @return [GetActRecordsResponseObjMapper]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :get_act_records_response_obj
  end

end
