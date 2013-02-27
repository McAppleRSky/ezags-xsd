# encoding: utf-8

class UploadRegistrarsResponseObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'UploadRegistrarsResponseObj'

  # Ответ по каждой выгруженной записи
  # @return [RegistrarUploadResponseMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
