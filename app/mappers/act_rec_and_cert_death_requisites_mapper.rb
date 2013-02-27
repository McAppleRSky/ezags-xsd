# encoding: utf-8
# @note Реквизиты АЗ и Свидетельства о смерти

class ActRecAndCertDeathRequisitesMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ActRecAndCertDeathRequisites'

  # Реквизиты записи акта о смерти
  # @return [OldActRecordRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_death_reqs
  # Реквизиты бумажного свидетельства для актовой записи о смерти
  # @return [OldRequisitesPaperCertificateForStatementMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :certificate_death_reqs

end
