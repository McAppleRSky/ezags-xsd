# encoding: utf-8

class SendServiceOfDeathRequestObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'SendServiceOfDeathRequestObj'

  # @return [StatementOfDeathMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_of_death

end
