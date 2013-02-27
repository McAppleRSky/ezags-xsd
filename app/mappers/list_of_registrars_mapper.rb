# encoding: utf-8

class ListOfRegistrarsMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'ListOfRegistrars'

  # @return [RegistrarMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
