# encoding: utf-8
# @note Загрузка записей акта о смерти

class UploadDeathActsObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'UploadDeathActsObj'

  # Запись акта о смерти с ЭП
  # @return [SignedActRecordDeathMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :signed_act_record_death

end
