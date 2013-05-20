# encoding: utf-8
# @note Сведения об информационной системе

class OrgExternalTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'orgExternalType'

  # Идентификатор системы
  # @return [MnemonicType]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :code
  # Наименование системы
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :name

end
