# encoding: utf-8
# @note Идентификационные данные места государственной регистрации

class RegistrarIdentityMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
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
