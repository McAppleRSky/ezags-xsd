# encoding: utf-8

class KladeFiasCodeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'KLADE_FIAS_CODE'


end
