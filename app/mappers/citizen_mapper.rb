# encoding: utf-8
# @note Сведения о человеке в объеме "Гражданин"
# 				Сведения о человеке (№ - услуга, * - роль в услуге):
# 				1) Усыновление:
# 				* мать;
# 				* отец.
# 				2) Перемена имени:
# 				* мать;
# 				* отец;
# 				* усынавитель;
# 				* усыновительница.
# 			

class CitizenMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'Citizen'

  # Признак "Является ли инициатор отправки заявления владельцем личного кабинета"
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_private_office_owner
  # Признак "Является ли Заявителем"
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :applicant
  # Фамилия
  # @return [STRING60]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :surname
  # Имя
  # @return [STRING60]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :first_name
  # Отчество
  # @return [STRING60]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :patronymic
  # Дата рождения
  # @return [DateAgileMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :birth_date
  # Код гражданства по классификатору ОКСМ
  # @return [CITIZENSHIP]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :citizenship
  # Гражданство, строковое представление (отличное от кода в ОКСМ)
  # @return [STRING80]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :citizenship_string
  # Код национальности по классификатору OkinNationality
  # @return [OKINCode]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :nationality
  # Национальность, строковое представление (отличное от кода в OkinNationality)
  # @return [STRING40]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :nationality_string

end
