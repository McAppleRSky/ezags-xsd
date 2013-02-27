# encoding: utf-8

class SendServiceOfDeathRequestObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'SendServiceOfDeathRequestObj'

  # @return [StatementOfDeathMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_of_death

end
