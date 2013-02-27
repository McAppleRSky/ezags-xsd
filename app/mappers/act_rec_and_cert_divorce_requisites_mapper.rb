# encoding: utf-8
# @note Реквизиты АЗ и Свидетельства о расторжении брака

class ActRecAndCertDivorceRequisitesMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ActRecAndCertDivorceRequisites'

  # Реквизиты записи акта о разводе
  # @return [OldActRecordRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_divorce_reqs
  # Реквизиты бумажного свидетельства для актовой записи о разводе
  # @return [OldRequisitesPaperCertificateForStatementMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :certificate_divorce_reqs

end
