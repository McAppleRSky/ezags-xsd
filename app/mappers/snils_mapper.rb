# encoding: utf-8
# @note СНИЛС

class SnilsMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SNILS'


end
