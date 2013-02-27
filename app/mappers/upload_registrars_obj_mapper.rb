# encoding: utf-8
# @note Загрузка сведений об органах ЗАГС

class UploadRegistrarsObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'UploadRegistrarsObj'

  # Выгружаемые записи о местах государственной регистрации
  # @return [RegistrarMapper]
  # minOccurs: 0, maxOccurs: Infinity
  attr_accessor :item

end
