# encoding: utf-8
# @note Статус проверки входящих документов

class VerificationStatusMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'VERIFICATION_STATUS'


end
