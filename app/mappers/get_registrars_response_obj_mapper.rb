# encoding: utf-8

class GetRegistrarsResponseObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'GetRegistrarsResponseObj'

  # @return [ListOfRegistrarsMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :return

end
