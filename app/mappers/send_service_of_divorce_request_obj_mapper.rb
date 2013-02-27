# encoding: utf-8

class SendServiceOfDivorceRequestObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'SendServiceOfDivorceRequestObj'

  # @return [StatementOfDivorceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_of_divorce

end
