# encoding: utf-8
# @note Заявление о разводе подаваемое в электронном виде

class StatementContentOfDivorceMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'StatementContentOfDivorce'

  # Время начала процедуры прекращения брака
  # @return [Time]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :divorce_time
  # Дата прекращения брака
  # @return [DateAgileMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :divorce_date
  # Категория льготника для Него (освобождает от уплаты гос.пошлины)
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :benefit_category_for_her
  # Категория льготника для Нее (освобождает от уплаты гос.пошлины)
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :benefit_category_for_him
  # Признак отсутствия у супругов, расторгающих брак, общих несовершеннолетних детей
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :has_common_children_under_age
  # Фамилия мужа (после регистрации акта: брака или развода)
  # @return [STRING60]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :new_last_name_of_husb
  # Фамилия жены (после после регистрации акта: брака или развода)
  # @return [STRING60]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :new_last_name_of_wife
  # Управляющий имуществом безвестно отсутствующего супруга (используется при регистрации расторжения брака по заявлению одного супруга и решению суда по другому супругу)
  # @return [MissingPersonAssetsManagerMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :missing_person_assets_manager
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
