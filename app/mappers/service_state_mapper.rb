# encoding: utf-8
# @note статус исполнения услуги

class ServiceStateMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'SERVICE_STATE'


end
