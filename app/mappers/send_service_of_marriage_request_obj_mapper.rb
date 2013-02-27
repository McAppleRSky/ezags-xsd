# encoding: utf-8

class SendServiceOfMarriageRequestObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'SendServiceOfMarriageRequestObj'

  # @return [StatementOfMarriageMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_of_marriage

end
