# encoding: utf-8
# @note Семейное положение

class MaritalStatusMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'MARITAL_STATUS'


end
