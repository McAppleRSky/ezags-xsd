# encoding: utf-8
# @note Ответ сервиса ЕЗАГС при загрузке записи акта

class ActRecordUploadResponseMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ActRecordUploadResponse'

  # внешний ключ акта (его реквизиты) и его UID, который был присвоен Федеральным еЗАГСом
  # @return [ActRecordRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_requsites
  # @return [FaultBaseObjMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :base_fault_obj

end
