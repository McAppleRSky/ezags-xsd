# encoding: utf-8
# @note Заявление на оказание услуги заключения брака в электронной форме

class StatementContentOfMarriageMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'StatementContentOfMarriage'

  # Желаемое время регистрации брака
  # @return [Time]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :desired_registraton_time
  # Желаемые дата регистрации брака
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :desired_registraton_date
  # Признак регистрации брака в торжественной обстановке
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :celebration_needed
  # Категория льготника для Него (освобождает от уплаты гос.пошлины)
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :benefit_category_for_her
  # Категория льготника для Нее (освобождает от уплаты гос.пошлины)
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :benefit_category_for_him
  # Фамилия мужа (после регистрации акта: брака или развода)
  # @return [STRING60]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :new_last_name_of_husb
  # Фамилия жены (после после регистрации акта: брака или развода)
  # @return [STRING60]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :new_last_name_of_wife
  # Кол-во ЕГО полных лет на момент заключения брака
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :groom_age
  # Кол-во ЕЕ полных на момент заключения брака
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :bride_age
  # Признак того, что невеста вступает в брак впервые
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_first_marriage_for_her
  # Признак того, что жених вступает в брак впервые
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_first_marriage_for_him
  # Число общих детей до 18 лет. Заполняется цифрами.
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :number_of_juvenile_children
  # Номер брони даты и времени приема гражданина в РЗАГС
  # @return [String]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :reserve_number_uid
  # Забронированное время приема гражданина в РЗАГС
  # @return [String]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :reserve_date_time

end
