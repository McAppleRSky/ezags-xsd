# encoding: utf-8
# @note Идентификационные данные места государственной регистрации

class RegistrarIdentityMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'RegistrarIdentity'

  # Код региона
  # @return [REGIONCode]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :region_code
  # Идентификатор ЗАГС в сети региона
  # @return [REGIONRegistrarId]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :region_zags_id

end
