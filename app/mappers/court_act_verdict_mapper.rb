# encoding: utf-8
# @note Реквизиты приговора суда

class CourtActVerdictMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'CourtActVerdict'

  # Наименование суда, вынесшего решение
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :court_name
  # Номер документа
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_number
  # Дата документа
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_date
  # Статус проверки сведений в данном документе (справочник DocumentVerifStatus)
  # @return [VERIFICATIONStatus]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :verification_status
  # Место принятия судебного акта
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :court_place
  # Срок лишения свободы
  # @return [Decimal]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :period

end
