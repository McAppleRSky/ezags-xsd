# encoding: utf-8
# @note Актовая запись о расторжении брака

class ActRecordDivorceMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ActRecordDivorce'

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
  # @return [ActRecordContentOfDivorceMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :content
  # Субъекты актовой записи о расторжении брака
  # @return [ActRecordParticipantsForDivorceMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :participants
  # Актовая запись и свидетельство о заключении брака супругов, расторгающих брак
  # @return [DocumentsConfirmingMarriageForDivorceMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :documents_confirming_marriage
  # Сведения о прочих лицах, заявивших о необходимости расторжении брака (НИ ОН, НИ ОНА)
  # @return [OtherApplicantsForDivorceMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :other_applicants
  # Документ – основание для регистрации расторжения брака
  # @return [DocumentsConfirmingDivorceMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_confirming_divorce

end
