# encoding: utf-8
# @note Документ установленной формы

class MedicalCertificateBaseMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'MedicalCertificateBase'

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
  # Код по ОКПО медицинской организации, выдавшей документ
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :okpo
  # Фамилия
  # @return [STRING60]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :surname
  # Имя
  # @return [STRING60]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :first_name
  # Отчество
  # @return [STRING60]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :patronymic
  # ФИО
  # @return [STRING250]
  # minOccurs: 0, maxOccurs: 1
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
  # Вид отметки на выданном документе
  # @return [MEDCertOfDeathType]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :med_cert_of_death_type

end
