# encoding: utf-8

class SendServiceOfBirthRequestObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'SendServiceOfBirthRequestObj'

  # @return [StatementOfBirthMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_of_birth

end
