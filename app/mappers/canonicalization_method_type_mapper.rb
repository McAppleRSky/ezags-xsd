# encoding: utf-8

class CanonicalizationMethodTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'CanonicalizationMethodType'


end
