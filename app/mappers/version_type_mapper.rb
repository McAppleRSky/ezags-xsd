# encoding: utf-8
# @note Формат версии

class VersionTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'VersionType'


end
