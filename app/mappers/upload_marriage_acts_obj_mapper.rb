# encoding: utf-8
# @note Загрузка записей акта о заключении брака

class UploadMarriageActsObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'UploadMarriageActsObj'

  # Запись акта о заключении брака с ЭП
  # @return [SignedActRecordMarriageMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :signed_act_record_marriage

end
