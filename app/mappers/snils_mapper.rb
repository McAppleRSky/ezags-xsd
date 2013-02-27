# encoding: utf-8
# @note СНИЛС

class SnilsMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SNILS'


end
