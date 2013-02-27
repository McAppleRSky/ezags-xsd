# encoding: utf-8

class GetFreeTimeResponseObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'GetFreeTimeResponseObj'

  # @return [ListOfFreeDatesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :return

end
