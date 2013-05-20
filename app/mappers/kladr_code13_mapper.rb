# encoding: utf-8

class KladrCode13Mapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'KLADR_CODE13'


end
