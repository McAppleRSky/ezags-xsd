# encoding: utf-8

class UploadDivorceActsResponseObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'UploadDivorceActsResponseObj'

  # Ответ по каждой выгружаемой записи акта
  # @return [ActRecordUploadResponseMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
