# encoding: utf-8
# @note Серия документа. Начинается с семи цифр

class Series7Mapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SERIES7'


end
