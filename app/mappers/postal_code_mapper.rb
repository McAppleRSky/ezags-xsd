# encoding: utf-8
# @note Почтовый код

class PostalCodeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'POSTAL_CODE'


end
