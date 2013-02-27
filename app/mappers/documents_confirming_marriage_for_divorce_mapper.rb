# encoding: utf-8
# @note Документ, подтверждающий брак между супругами (при регистарции расторжения брака)

class DocumentsConfirmingMarriageForDivorceMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DocumentsConfirmingMarriageForDivorce'

  # Реквизиты АЗ и Свидетельства о браке
  # @return [ActRecAndCertMarriageRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_rec_and_cert_marriage_requisites

end
