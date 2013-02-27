# encoding: utf-8

class UpdateStatusRequestObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'UpdateStatusRequestObj'

  # @return [ServiceStatusMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :new_status

end
