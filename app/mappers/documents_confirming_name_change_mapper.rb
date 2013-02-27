# encoding: utf-8
# @note Документ, подтверждающий рождение лица, меняющего имя

class DocumentsConfirmingNameChangeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DocumentsConfirmingNameChange'

  # Реквизиты АЗ и Свидетельства о рождении
  # @return [ActRecAndCertBirthRequisitesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :act_rec_and_cert_birth_requisites

end
