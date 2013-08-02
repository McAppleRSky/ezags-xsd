# encoding: utf-8
# @note Актовая запись об усыновлении

class ActRecordAdoptionMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ActRecordAdoption'

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
  # ФИО руководителя органа ЗАГС
  # @return [STRING250]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :head_of_zags_fio
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
  # ФИО сотрудника органа ЗАГС
  # @return [STRING250]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :specialist_fio
  # Временная метка, в виде time stamp, используемая в качестве версии
  # @return [TIMEStampVersion]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :version
  # Дополнительный контент
  # @return [ActRecordContentOfAdoptionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :content
  # Субъекты актовой записи об усыновлении (удочерении)
  # @return [ActRecordParticipantsForAdoptionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :participants
  # Реквизиты АЗ о заключении брака (между усыновителями ИЛИ между усыновителем и родителем)
  # @return [DocumentsConfirmingMarriageForAdoptionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :documents_confirming_marriage_for_adoption
  # Документ – основание для регистрации усыновления (удочерения)
  # @return [DocumentsConfirmingAdoptionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :documents_confirming_adoption
  # Актовая запись о рождении ребенка, изменяемая в связи с усыновлением (отменой усыновления)
  # @return [RelatedModifiedDocumentsForAdoptionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :related_modified_documents
  # Сведения о прочих лицах (НЕ усыновителях), заявивших об усыновлении (удочерении) ребенка
  # @return [OtherApplicantsForAdoptionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :other_applicants

end
