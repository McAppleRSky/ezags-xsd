# encoding: utf-8
# @note Приговор суда о разводе с заявлением с другой стороны

class CourtActVerdictWithStatementMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'CourtActVerdictWithStatement'

  # Документ - основание расторжения брака (заявление одного из супругов)
  # @return [RequisitesFromStatementsForServiceDivorceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :single_statement_of_divorce
  # Приговор суда (при регистрации расторжения брака)
  # @return [CourtActVerdictMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :court_verdict_of_divorce

end
