# encoding: utf-8
# @note Документы - основания для регистрации установления отцовства

class DocumentsConfirmingFiliationMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DocumentsConfirmingFiliation'

  # Совместное заявление родителей, не состоящих в браке
  # @return [RequisitesFromStatementsForServiceJointFiliationMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :joint_statement
  # Заявление отца ребенка
  # @return [RequisitesFromStatementsForServiceJointFiliationMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :father_statement
  # Решение суда (при установлении отцовства)
  # @return [CourtActDecisionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :court_decision_of_filliation

end
