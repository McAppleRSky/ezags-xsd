# encoding: utf-8
# @note Статусы процесса резервации времени посещения по услуге

class TimeReservationStatusMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'TIME_RESERVATION_STATUS'


end
