# encoding: utf-8
# @note Тип запрашиваемого повторного документа

class ReissuedDocTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'reissuedDocType'


end
