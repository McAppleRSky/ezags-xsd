# encoding: utf-8
# @note Информация о целевом сервисе

class ServiceTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ServiceType'

  # Мнемоника сервиса
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :mnemonic
  # Версия сервиса
  # @return [VersionType]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :version

end
