# encoding: utf-8
# @note Список типов сообщения об ошибке

class FaultMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'FAULT'


end
