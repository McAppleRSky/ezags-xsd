# encoding: utf-8
# @note Загрузка сведений об органах ЗАГС

class UploadRegistrarsObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'UploadRegistrarsObj'

  # Выгружаемые записи о местах государственной регистрации
  # @return [RegistrarMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
