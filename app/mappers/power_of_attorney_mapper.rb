# encoding: utf-8
# @note Доверенность ФЛ

class PowerOfAttorneyMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'PowerOfAttorney'

  # Дата документа
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :document_date

end
