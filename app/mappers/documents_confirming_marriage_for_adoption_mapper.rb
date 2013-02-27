# encoding: utf-8
# @note Документы подтверждающие брак в услуге об усыновлении

class DocumentsConfirmingMarriageForAdoptionMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DocumentsConfirmingMarriageForAdoption'

  # Реквизиты АЗ и Свидетельства о браке
  # @return [ActRecAndCertMarriageRequisitesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :act_rec_and_cert_marriage_requisites

end
