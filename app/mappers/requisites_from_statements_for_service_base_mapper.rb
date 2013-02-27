# encoding: utf-8
# @note Базовый класс для сведений о заявлениях в записях актов

class RequisitesFromStatementsForServiceBaseMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'RequisitesFromStatementsForServiceBase'

  # Дата заявления
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_date
  # Номер заявления
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :statement_number

end
