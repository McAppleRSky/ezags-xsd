# encoding: utf-8
# @note е-Заявление о расторжении брака

class StatementOfDivorceMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'StatementOfDivorce'

  # @return [StatementRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_requisites
  # Дополнительный контент в заявлении (любая доплнительная
  #                         информация)
  # @return [StatementContentOfDivorceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_content
  # Субъекты
  # @return [ParticipantsForDivorceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :participants
  # Документ, подтверждающий заключение брака между супругами
  # @return [ActRecAndCertMarriageRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :documents_confirming_marriage
  # Приговор суда (при регистрации расторжения брака)
  # @return [CourtActVerdictMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :court_verdict_of_divorce
  # Решение суда (при регистрации расторжения брака)
  # @return [CourtActDecisionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :court_decision_of_divorce
  # Удостоверение льготника установленного образца для НЕГО
  # @return [RequisitesPaperDocumentMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_confirming_benefit_for_him
  # Удостоверение льготника установленного образца для НЕЕ
  # @return [RequisitesPaperDocumentMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_confirming_benefit_for_her
  # Сведения о прочих лицах, заявивших о необходимости расторжении
  #                         брака (НИ ОН, НИ ОНА)
  # @return [OtherApplicantsForDivorceMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :other_applicants

end
