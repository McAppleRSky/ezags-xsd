# encoding: utf-8
# @note Перечисляемый тип: "живорожденный / мертворожденный" ребенок

class BirthStatusesMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'BIRTH_STATUSES'


end
