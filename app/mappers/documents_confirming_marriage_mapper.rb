# encoding: utf-8
# @note Документы, подтверждающие прекращение предыдущего брака (при регистрации нового брака)

class DocumentsConfirmingMarriageMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DocumentsConfirmingMarriage'

  # Реквизиты АЗ о расторжении предыдущего брака
  # @return [ActRecAndCertDivorceRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :divorce_act_record_requisites
  # Реквизиты АЗ о смерти предыдущего супруга
  # @return [ActRecAndCertDeathRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :death_act_record_requisites
  # Решение суда о прекращении предыдущего брака
  # @return [CourtActDecisionMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :cancel_court_decision

end
