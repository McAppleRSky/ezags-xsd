# encoding: utf-8

class DateDdMmYyyyMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DATE_DD_MM_YYYY'


end
