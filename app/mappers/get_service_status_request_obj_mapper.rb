# encoding: utf-8

class GetServiceStatusRequestObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'GetServiceStatusRequestObj'

  # @return [ServiceIdentityMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :service_identity

end
