# encoding: utf-8

class UploadRegistrarsResponseObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'UploadRegistrarsResponseObj'

  # Ответ по каждой выгруженной записи
  # @return [RegistrarUploadResponseMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
