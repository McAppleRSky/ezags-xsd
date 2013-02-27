# encoding: utf-8

class ListOfRegistrarsMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'ListOfRegistrars'

  # @return [RegistrarMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
