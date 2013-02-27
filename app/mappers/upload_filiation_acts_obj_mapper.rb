# encoding: utf-8
# @note Загрузка записей акта об установлении отцовства

class UploadFiliationActsObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'UploadFiliationActsObj'

  # Запись акта об устанновлении отцовства с ЭП
  # @return [SignedActRecordFiliationMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :signed_act_record_filiation

end
