# encoding: utf-8
# @note Период из двух приблизительных дат

class DatePeriodMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'DatePeriod'

  # Начало периода
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :start_date
  # Окончание периода
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :end_date

end
