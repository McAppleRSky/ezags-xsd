# encoding: utf-8
# @note Номер телефона

class PhoneMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'PHONE'


end
