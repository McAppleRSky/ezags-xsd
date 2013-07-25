# encoding: utf-8
# @note Сведения о человеке в объеме "Гражданин с датой и местом рождения"
# 				Сведения о человеке (№ - услуга, * - роль в услуге):
# 				1) Рождение:
# 				* отец для услуги в типе 6;
# 				* мать для устуги в типе 5,6;
# 				2) Установление отцовства:
# 				* мать для услуги в типе 3.
# 			

class CitizenWithoutIdentDocMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'CitizenWithoutIdentDoc'

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
  # Пол
  # @return [GENDERS]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :gender
  # Дата рождения
  # @return [DateAgileMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :birth_date
  # Место рождения
  # @return [ShortAddressMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :birth_place
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
  # Место жительства
  # @return [FullAddressMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :residence_place
  # СНИЛС
  # @return [SNILS]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :snils

end
