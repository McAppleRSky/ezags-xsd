# encoding: utf-8
# @note Пустой запрос

class VoidRequestObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'VoidRequestObj'


end
