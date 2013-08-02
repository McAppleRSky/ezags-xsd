# encoding: utf-8

class SubjectAddressMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'SubjectAddress'

  # @return [FullAddressMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :address
  # @return [ADDRESSType]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :address_type
  # @return [Int]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :subject_type

end
