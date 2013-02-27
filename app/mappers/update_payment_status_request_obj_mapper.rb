# encoding: utf-8

class UpdatePaymentStatusRequestObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'UpdatePaymentStatusRequestObj'

  # Идентификатор услуги в ЕПГУ
  # @return [UID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :pgu_id
  # Идентификатор услуги в еЗАГС
  # @return [UID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :ezags_id
  # @return [BillMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :status

end
