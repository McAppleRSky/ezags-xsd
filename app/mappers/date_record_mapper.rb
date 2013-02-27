# encoding: utf-8
# @note Значение даты: используется для реквизитов, которые могут содержать неполную дату
#             

class DateRecordMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DateRecord'

  # число даты
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :day
  # месяц даты
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :month
  # год даты
  # @return [Int]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :year

end
