# encoding: utf-8
# @note Список типов сообщения об ошибке

class FaultMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'FAULT'


end
