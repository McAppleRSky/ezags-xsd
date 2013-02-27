# encoding: utf-8

class UpdatePaymentStatusRequestObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
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