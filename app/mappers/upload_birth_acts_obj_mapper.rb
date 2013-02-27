# encoding: utf-8
# @note Загрузка записей акта о рождении

class UploadBirthActsObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'UploadBirthActsObj'

  # Запись акта о рождении с ЭП
  # @return [SignedActRecordBirthMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :signed_act_record_birth

end
