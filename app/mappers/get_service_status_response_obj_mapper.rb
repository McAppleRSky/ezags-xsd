# encoding: utf-8

class GetServiceStatusResponseObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'GetServiceStatusResponseObj'

  # @return [ServiceStatusMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :result

end
