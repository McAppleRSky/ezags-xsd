# encoding: utf-8

class ActRecAndCertMarriageRequisitesForStmtMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ActRecAndCertMarriageRequisitesForStmt'

  # Реквизиты АЗ о заключении брака
  # @return [OldActRecordRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_marriage_reqs
  # Реквизиты бумажного свидетельства о заключении брака, выданного по АЗ
  # @return [OldRequisitesPaperCertificateForStatementMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :certificate_marriage_reqs
  # Реквизиты АЗ и Свидетельства о разводе
  # @return [ActRecAndCertDivorceRequisitesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :act_rec_and_cert_divorce_requisites
  # Реквизиты АЗ и Свидетельства о сметри
  # @return [ActRecAndCertDeathRequisitesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :act_rec_and_cert_death_requisites
  # Решение суда (при регистрации расторжения брака)
  # @return [CourtActDecisionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :court_decision_of_divorce

end
