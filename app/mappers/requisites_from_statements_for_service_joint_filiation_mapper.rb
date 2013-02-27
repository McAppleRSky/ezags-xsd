# encoding: utf-8
# @note Совместное заявление родителей об установлении отцовства

class RequisitesFromStatementsForServiceJointFiliationMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'RequisitesFromStatementsForServiceJointFiliation'

  # Дата заявления
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_date
  # Номер заявления
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :statement_number

end
