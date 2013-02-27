# encoding: utf-8
# @note Документы основания для регистрации брака

class DocumentsConfirmingMarriageInStmtMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'DocumentsConfirmingMarriageInStmt'

  # Реквизиты записи о расторжении предыдущего брака
  # @return [ActRecAndCertDivorceRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :divorce_act_record_requisites
  # Реквизиты записи акта о смерти предыдущей супруги/супруга
  # @return [ActRecAndCertDeathRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :death_act_record_requisites

end
