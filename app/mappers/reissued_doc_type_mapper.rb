# encoding: utf-8
# @note Тип запрашиваемого повторного документа

class ReissuedDocTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'reissuedDocType'


end
