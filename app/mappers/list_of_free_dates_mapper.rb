# encoding: utf-8

class ListOfFreeDatesMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'ListOfFreeDates'

  # @return [TIME]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
