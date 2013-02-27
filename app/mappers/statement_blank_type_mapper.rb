# encoding: utf-8
# @note Форма заявления на предоставление услуги

class StatementBlankTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'STATEMENT_BLANK_TYPE'


end
