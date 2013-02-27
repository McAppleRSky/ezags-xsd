# encoding: utf-8
# @note Номер телефона

class PhoneMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'PHONE'


end
