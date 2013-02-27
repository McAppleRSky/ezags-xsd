# encoding: utf-8
# @note Реквизиты АЗ и Свидетельства об установлении отцовства

class ActRecAndCertFiliationRequisitesMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ActRecAndCertFiliationRequisites'

  # Реквизиты записи акта об установлении отцовства в отношении ребёнка
  # @return [OldActRecordRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_filiation_reqs
  # Реквизиты бумажного свидетельства для актовой записи об установлении отцовства
  # @return [OldRequisitesPaperCertificateForStatementMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :certificate_filiation_reqs

end
