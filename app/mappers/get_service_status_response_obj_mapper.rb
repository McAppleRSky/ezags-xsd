# encoding: utf-8

class GetServiceStatusResponseObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'GetServiceStatusResponseObj'

  # @return [ServiceStatusMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :result

end
