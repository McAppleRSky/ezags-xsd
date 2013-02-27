# encoding: utf-8

class ListOfFreeDatesMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'ListOfFreeDates'

  # @return [Time]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
