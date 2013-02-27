# encoding: utf-8
# @note Документы - основания для регистрации расторжения брака

class DocumentsConfirmingDivorceMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'DocumentsConfirmingDivorce'

  # Документ - основание расторжения брака (совместное заявление супругов, не имеющих общих детей)
  # @return [RequisitesFromStatementsForServiceDivorceMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :joint_statement_of_divorce
  # Решение суда (при регистрации расторжения брака)
  # @return [CourtActDecisionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :court_decision_of_divorce
  # Решение суда (используемое при расторжении брака)
  # @return [CourtActDecisionWithStatementMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :decision_of_divorce_with_statement
  # Приговор суда об осуждении за совершение преступления к лишению свободы (используется при расторжении брака)
  # @return [CourtActVerdictWithStatementMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :verdict_of_divorce_with_statement

end
