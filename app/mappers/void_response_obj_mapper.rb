# encoding: utf-8
# @note Пустой ответ

class VoidResponseObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'VoidResponseObj'


end
