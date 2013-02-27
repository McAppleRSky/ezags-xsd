# encoding: utf-8

class SendServiceOfBirthRequestObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'SendServiceOfBirthRequestObj'

  # @return [StatementOfBirthMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_of_birth

end
