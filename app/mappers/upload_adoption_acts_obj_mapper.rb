# encoding: utf-8
# @note Загрузка записей акта об усыновлении

class UploadAdoptionActsObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'UploadAdoptionActsObj'

  # Запись акта об усыновлении (удочерении) с ЭП
  # @return [SignedActRecordAdoptionMapper]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :signed_act_record_adoption

end
