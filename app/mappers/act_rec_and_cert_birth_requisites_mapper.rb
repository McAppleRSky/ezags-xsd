# encoding: utf-8
# @note Реквизиты АЗ и Свидетельства о браке

class ActRecAndCertBirthRequisitesMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ActRecAndCertBirthRequisites'

  # Реквизиты записи акта о рождении
  # @return [OldActRecordRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_birth_reqs
  # Реквизиты бумажного свидетельства для актовой записи о рождении
  # @return [OldRequisitesPaperCertificateForStatementMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :certificate_birth_reqs

end
