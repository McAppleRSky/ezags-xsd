# encoding: utf-8
# @note Заявление отца об установлении отцовства

class RequisitesFromStatementsForServiceFatherFiliationMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'RequisitesFromStatementsForServiceFatherFiliation'

  # Дата заявления
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_date
  # Номер заявления
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :statement_number
  # Реквизиты АЗ о смерти матери
  # @return [OldActRecordRequisitesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :death_reqs
  # Решение суда (при установлении отцовства)
  # @return [CourtActDecisionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :court_decision
  # Справка органа внутренних дел о том, что местонахождение матери не установлено
  # @return [RequisitesReferenceFromOVDMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :ref_reqs

end
