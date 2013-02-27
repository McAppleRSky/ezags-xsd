# encoding: utf-8
# @note Загрузка записей акта о расторжении брака

class UploadDivorceActsObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'UploadDivorceActsObj'

  # Запись акта о расторжении брака с ЭП
  # @return [SignedActRecordDivorceMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :signed_act_record_divorce

end
