# encoding: utf-8

class UploadBirthActsResponseMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'UploadBirthActsResponse'

  # Служебный блок атрибутов СМЭВ
  # @return [MessageTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message
  # @return [MessageDataMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :message_data

  class MessageData
    include XmlSchemaMapper
    schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
    annonymus_type 'UploadBirthActsResponse::MessageData'

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
    schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
    annonymus_type 'UploadBirthActsResponse::MessageData::AppData'

    # @return [UploadBirthActsResponseObjMapper]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :upload_birth_acts_response_obj
    # @return [SignatureTypeMapper]
    # minOccurs: 0, maxOccurs: 1
    attr_accessor :signature
  end

end