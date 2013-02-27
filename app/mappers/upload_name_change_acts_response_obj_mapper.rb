# encoding: utf-8

class UploadNameChangeActsResponseObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'UploadNameChangeActsResponseObj'

  # Ответ по каждой выгружаемой записи акта
  # @return [ActRecordUploadResponseMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
