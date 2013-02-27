# encoding: utf-8

class MessageDataTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'MessageDataType'

  # Блок структурированных сведений
  # @return [AppDataTypeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :app_data
  # Блок вложений
  # @return [AppDocumentTypeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :app_document

end
