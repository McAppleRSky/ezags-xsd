# encoding: utf-8
# @note Тип услуги

class ServiceTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SERVICE_TYPE'


end
