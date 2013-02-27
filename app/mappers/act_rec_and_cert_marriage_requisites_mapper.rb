# encoding: utf-8
# @note Реквизиты АЗ и Свидетельства о браке

class ActRecAndCertMarriageRequisitesMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ActRecAndCertMarriageRequisites'

  # Реквизиты АЗ о заключении брака
  # @return [OldActRecordRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_marriage_reqs
  # Реквизиты бумажного свидетельства о заключении брака, выданного по АЗ
  # @return [OldRequisitesPaperCertificateForStatementMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :certificate_marriage_reqs

end
