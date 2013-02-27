# encoding: utf-8
# @note Загрузка записей акта об установлении отцовства

class UploadFiliationActsObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'UploadFiliationActsObj'

  # Запись акта об устанновлении отцовства с ЭП
  # @return [SignedActRecordFiliationMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :signed_act_record_filiation

end
