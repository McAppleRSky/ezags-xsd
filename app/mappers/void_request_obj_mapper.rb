# encoding: utf-8
# @note Пустой запрос

class VoidRequestObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'VoidRequestObj'


end
