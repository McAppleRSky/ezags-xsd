# encoding: utf-8
# @note Основание для услуги усыновления

class DocumentsConfirmingAdoptionMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'DocumentsConfirmingAdoption'

  # Решение суда
  # @return [CourtActDecisionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :court_decision

end
