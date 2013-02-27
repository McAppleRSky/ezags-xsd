# encoding: utf-8

class RegionRegistrarIdMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'REGION_REGISTRAR_ID'


end
