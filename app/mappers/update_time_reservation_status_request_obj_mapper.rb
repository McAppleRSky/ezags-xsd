# encoding: utf-8

class UpdateTimeReservationStatusRequestObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'UpdateTimeReservationStatusRequestObj'

  # Идентификатор услуги в ЕПГУ
  # @return [UID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :pgu_id
  # Код органа ЗАГС, составившего документ (из внешнего справочника на ЕНСИ)
  # @return [RegistrarUID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :registrar_id
  # Статусы процесса резервации времени посещения по услуге
  # @return [TIMEReservationStatus]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reservation_status
  # Простое описание временного блока, который регистрируется для посещения в УЭО
  # @return [TimeSlotMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :timeslot
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :comment

end
