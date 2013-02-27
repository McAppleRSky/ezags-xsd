# encoding: utf-8
# @note Актовая запись о смерти

class ActRecordDeathMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ActRecordDeath'

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
  # Руководитель органа ЗАГС, удостоверяющий своей подписью сведения
  # @return [RegistrarEmployeeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :head_of_zags
  # Это второй экземпляр актовой записи?
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_second_copy
  # Признак восстановленной актовой записи
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_recovered
  # Сведения о восстановлени записи акта
  # @return [CourtActDecisionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :requisites_court_decision_act_record_recovered
  # Иные сведения и служебные отметки
  # @return [OtherInformationAndOfficialAnnotationsMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :other_information_and_official_annotations
  # Сведения об аннулировании записи акта
  # @return [CourtActDecisionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :requisites_court_decision_act_record_cancel
  # Дата внесения изменений в запись акта (при совершении юридически значимого действия)
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :correction_date
  # Сотрудник органа ЗАГС, зарегистрировавший акт
  # @return [RegistrarEmployeeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :specialist
  # Временная метка, в виде time stamp, используемая в качестве версии
  # @return [TIMEStampVersion]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :version
  # Дополнительный контент
  # @return [ActRecordContentOfDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :content
  # Субъект АЗ о смерти
  # @return [ParticipantsForDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :participants
  # Документ, подтверждающий факт смерти
  # @return [DocumentsConfirmingDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :documents_confirming_death
  # Сведения о лицах, сделавших заявление о смерти
  # @return [OtherApplicantsMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :other_applicants

end