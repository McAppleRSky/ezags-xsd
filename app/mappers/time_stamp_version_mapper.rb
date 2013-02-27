# encoding: utf-8
# @note Временной интервал ограничен датами с 1 января 1910 года по 1 января 2020 года

class TimeStampVersionMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'TIME_STAMP_VERSION'


end