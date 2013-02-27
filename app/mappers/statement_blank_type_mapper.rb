# encoding: utf-8
# @note Форма заявления на предоставление услуги

class StatementBlankTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'STATEMENT_BLANK_TYPE'


end
