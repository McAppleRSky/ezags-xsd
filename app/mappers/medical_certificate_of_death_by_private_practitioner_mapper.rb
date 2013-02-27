# encoding: utf-8
# @note Документ установленной формы о смерти, выданный частнопрактикующим врачем
# 			

class MedicalCertificateOfDeathByPrivatePractitionerMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'MedicalCertificateOfDeathByPrivatePractitioner'

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
  # ФИО
  # @return [STRING250]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :fio
  # Почтовый адрес
  # @return [FullAddressMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :postal_address
  # Номер лицензии на медицинскую деятельность частнопрактикующего врача
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :license_number
  # Признак "дубликат"
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :duplicate
  # Статус проверки сведений в данном документе (справочник DocumentVerifStatus)
  # @return [VERIFICATIONStatus]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :verification_status
  # Вид отметки на выданном документе (справочник MedCertOfDeathType)
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :med_cert_of_death_type

end
