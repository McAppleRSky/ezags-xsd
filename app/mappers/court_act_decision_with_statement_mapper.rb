# encoding: utf-8
# @note Решение суда о разводе с заявлением о разводе с другой стороны

class CourtActDecisionWithStatementMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'CourtActDecisionWithStatement'

  # Документ - основание расторжения брака (заявление одного из супругов)
  # @return [RequisitesFromStatementsForServiceDivorceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :single_statement_of_divorce
  # Решение суда (при регистрации расторжения брака)
  # @return [CourtActDecisionMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :court_decision_of_divorce

end
