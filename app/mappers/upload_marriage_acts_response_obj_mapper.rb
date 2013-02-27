# encoding: utf-8

class UploadMarriageActsResponseObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'UploadMarriageActsResponseObj'

  # Ответ по каждой выгружаемой записи акта
  # @return [ActRecordUploadResponseMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
