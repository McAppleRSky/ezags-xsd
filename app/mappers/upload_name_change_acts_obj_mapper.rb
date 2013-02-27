# encoding: utf-8
# @note Загрузка записей акта о перемене имени

class UploadNameChangeActsObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'UploadNameChangeActsObj'

  # Запись акта о перемене имени с ЭП
  # @return [SignedActRecordNameChangeMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :signed_act_record_name_change

end
