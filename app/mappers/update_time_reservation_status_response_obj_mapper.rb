# encoding: utf-8

class UpdateTimeReservationStatusResponseObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'UpdateTimeReservationStatusResponseObj'

  # Идентификатор услуги в ЕПГУ
  # @return [UID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :pgu_id
  # Результат процедуры смены статуса резервации времени приема
  # @return [OPERATIONResult]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :result_status
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :comment

end
