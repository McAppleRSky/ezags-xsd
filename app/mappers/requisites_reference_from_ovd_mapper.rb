# encoding: utf-8
# @note Реквизиты справки ОВД в заявлении отца об установлении отцовства

class RequisitesReferenceFromOvdMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'RequisitesReferenceFromOVD'

  # Наименование организации
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :organization_name
  # Дата документа
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :document_date

end
