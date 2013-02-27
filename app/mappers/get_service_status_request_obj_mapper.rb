# encoding: utf-8

class GetServiceStatusRequestObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'GetServiceStatusRequestObj'

  # @return [ServiceIdentityMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :service_identity

end
