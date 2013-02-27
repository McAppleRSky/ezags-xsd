# encoding: utf-8
# @note Перечисляемый тип: "живорожденный / мертворожденный" ребенок

class BirthStatusesMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'BIRTH_STATUSES'


end
