# encoding: utf-8
# @note Статусы процесса резервации времени посещения по услуге

class TimeReservationStatusMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'TIME_RESERVATION_STATUS'


end
