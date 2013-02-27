# encoding: utf-8
# @note Статус проверки входящих документов

class VerificationStatusMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'VERIFICATION_STATUS'


end
