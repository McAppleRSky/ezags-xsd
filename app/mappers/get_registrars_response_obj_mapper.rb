# encoding: utf-8

class GetRegistrarsResponseObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'GetRegistrarsResponseObj'

  # @return [ListOfRegistrarsMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :return

end
