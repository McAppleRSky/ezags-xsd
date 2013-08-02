# encoding: utf-8
# @note Тип адреса

class AddressTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'ADDRESS_TYPE'


end
