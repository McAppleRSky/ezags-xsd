# encoding: utf-8
# @note Актовая запись о перемене имени в объеме свидетельства

class ActRecordToCertificateNameChangeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ActRecordToCertificateNameChange'

  # Код органа ЗАГС, составившего документ (из внешнего справочника на ЕНСИ)
  # @return [RegistrarUID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :registrar_id
  # Номер актовой записи в Федеральном электронном ЗАГСе
  # @return [ACTRecordUid]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :act_record_uid
  # Номер актовой записи
  # @return [ACTRecordNumber]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_number
  # Дата составления документа
  # @return [DateRecordMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_date
  # Признак восстановленной актовой записи
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_recovered
  # Дополнительный контент
  # @return [ActRecordContentOfNameChangeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :content
  # Субъекты актовой записи об изменении имени
  # @return [ActRecordParticipantsForNameChangeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :participants

end
