# encoding: utf-8
# @note Дата (выбор из точного и неточного значения)

class DateAgileMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DateAgile'

  # Дата
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :precise_date
  # Приблизительная дата
  # @return [DateRecordMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :imprecise_date

end
