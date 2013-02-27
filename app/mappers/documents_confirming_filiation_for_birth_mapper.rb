# encoding: utf-8
# @note Основание для внесения сведений об отце

class DocumentsConfirmingFiliationForBirthMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DocumentsConfirmingFiliationForBirth'

  # Реквизиты АЗ и Свидетельства о браке
  # @return [ActRecAndCertMarriageRequisitesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :act_rec_and_cert_marriage_requisites
  # Реквизиты АЗ и Свидетельства об установлении отцовства
  # @return [ActRecAndCertFiliationRequisitesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :act_rec_and_cert_filiation_requisites
  # Реквизиты заявления одинокой матери
  # @return [RequisitesForStatementBirthFromSingleMotherMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :requisites_for_statement_birth_from_single_mother

end
