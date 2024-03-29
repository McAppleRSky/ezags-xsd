# encoding: utf-8
# @note Документ установленной формы о смерти, выданный мед. организацией

class MedicalCertificateOfBirthByOrganizationMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'MedicalCertificateOfBirthByOrganization'

  # Номер документа
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :document_number
  # Серия документа
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :document_series
  # Дата документа
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :document_date
  # Наименование организации
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :organization_name
  # Адрес организации, выдавшей документ
  # @return [FullAddressMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :organization_address
  # Код организации по ОКПО
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :okpo
  # Признак "дубликат"
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :duplicate
  # Статус проверки сведений в данном документе (справочник DocumentVerifStatus)
  # @return [VERIFICATIONStatus]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :verification_status

end
