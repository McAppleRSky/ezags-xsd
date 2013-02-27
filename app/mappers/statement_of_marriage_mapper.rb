# encoding: utf-8
# @note е-Заявление о заключении брака

class StatementOfMarriageMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'StatementOfMarriage'

  # @return [StatementRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_requisites
  # Дополнительный контент в заявлении (любая доплнительная
  #                         информация)
  # @return [StatementContentOfMarriageMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_content
  # Субъекты
  # @return [ParticipantsForMarriageMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :participants
  # Документ, подтверждающий прекращение ЕГО предыдущего брака (развод или смерть
  #                         супруги в предыдущем браке или прекращение брака по суду)
  # @return [DocumentsConfirmingMarriageMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :documents_confirming_groom
  # Документ, подтверждающий прекращение ЕЕ предыдущего брака (развод или смерть
  #                         супруга в предыдущем браке или прекращение брака по суду)
  # @return [DocumentsConfirmingMarriageMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :documents_confirming_bride
  # Удостоверение льготника установленного образца для НЕЕ
  # @return [RequisitesPaperDocumentMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_confirming_benefit_for_her
  # Удостоверение льготника установленного образца для НЕГО
  # @return [RequisitesPaperDocumentMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_confirming_benefit_for_him

end
