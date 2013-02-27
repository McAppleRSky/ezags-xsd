# encoding: utf-8
# @note Серия документа. Начинается с семи цифр

class Series7Mapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SERIES7'


end
