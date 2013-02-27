# encoding: utf-8
# @note Реквизиты решения суда

class CourtActDecisionMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'CourtActDecision'

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
  # Суть судебного акта (справочник eZags)
  # @return [Int]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :court_act_meaning_type

end
