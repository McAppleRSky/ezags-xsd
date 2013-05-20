# encoding: utf-8
# @note Временной интервал ограничен минимальной датой - 1 января 1900 года

class TimeStampVersionMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'TIME_STAMP_VERSION'


end
