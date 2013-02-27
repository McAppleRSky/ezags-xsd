# encoding: utf-8

class UpdateStatusRequestObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'UpdateStatusRequestObj'

  # @return [ServiceStatusMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :new_status

end
