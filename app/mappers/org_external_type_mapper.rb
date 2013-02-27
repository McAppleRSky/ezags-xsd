# encoding: utf-8
# @note Сведения об информационной системе
# 			

class OrgExternalTypeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'orgExternalType'

  # Идентификатор системы
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :code
  # Наименование системы
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :name

end
