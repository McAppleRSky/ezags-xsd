# encoding: utf-8

class GetRegistrarsRequestObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'GetRegistrarsRequestObj'

  # Код региона
  # @return [REGIONCode]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :region_code
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :service_type
  # @return [SubjectAddressMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :subject_address

end
