# encoding: utf-8

class StreamTaskResponseMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/retro/StreamTaskService.xsd', File.dirname(__FILE__))
  type 'StreamTaskResponse'

  # Служебный блок атрибутов СМЭВ
  # @return [MessageTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message
  # @return [MessageDataMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message_data

  class MessageData
    include XmlSchemaMapper
    schema File.expand_path('../../vendor/ezags-protocols/retro/StreamTaskService.xsd', File.dirname(__FILE__))
    annonymus_type 'StreamTaskResponse::MessageData'

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
    schema File.expand_path('../../vendor/ezags-protocols/retro/StreamTaskService.xsd', File.dirname(__FILE__))
    annonymus_type 'StreamTaskResponse::MessageData::AppData'

    # @return [StreamTaskResponseObjMapper]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :stream_task_response_obj
  end

end
