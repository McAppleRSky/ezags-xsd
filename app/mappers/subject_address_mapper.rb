# encoding: utf-8

class SubjectAddressMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'SubjectAddress'

  # @return [FullAddressMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :address
  # @return [Int]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :address_type
  # @return [Int]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :subject_type

end
