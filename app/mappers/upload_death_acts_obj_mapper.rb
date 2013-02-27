# encoding: utf-8
# @note Загрузка записей акта о смерти

class UploadDeathActsObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'UploadDeathActsObj'

  # Запись акта о смерти с ЭП
  # @return [SignedActRecordDeathMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :signed_act_record_death

end
