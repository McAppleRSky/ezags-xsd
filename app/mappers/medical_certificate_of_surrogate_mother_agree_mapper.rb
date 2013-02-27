# encoding: utf-8
# @note Документ, подтверждающий согласие суррогатной матери на запись супругов родителями ребенка
# 			

class MedicalCertificateOfSurrogateMotherAgreeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'MedicalCertificateOfSurrogateMotherAgree'

  # Номер документа
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_number
  # Серия документа
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_series
  # Дата документа
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_date
  # Наименование типа документа
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_type_name
  # Наименование организации
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :organization_name
  # Адрес организации, выдавшей документ
  # @return [FullAddressMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :organization_address
  # Статус проверки сведений в данном документе (справочник DocumentVerifStatus)
  # @return [VERIFICATIONStatus]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :verification_status

end
