# encoding: utf-8
# @note Сведения о человеке в объеме "Гражданин с датой, местом рождения и местом жительства"
# 				Сведения о человеке (№ - услуга, * - роль в услуге):
# 				1) Перемена имени:
# 				* меняющий имя;
# 				2) Внесение изменений:
# 				* заинтересованное лицо;
# 				3) Рождение:
# 				* отец для услуги в типах 1,2;
# 				* мать для устуги в типах 1,2;
# 				* ребенок для услуги в типе 6.
# 				4) Установление отцовства:
# 				* отец для услуги в типах 1,2,3;
# 				* мать для услуги в типе 1;
# 				5) Заключение брака:
# 				* новобрачный для услуги в типе 1;
# 				6) Усыновление:
# 				* усынавливающий;
# 				7) Расторжение брака:
# 				* разводящийся в типах 1,2,3.
# 				8) Повторная выдача:
# 				* заинтересованное лицо для услуги в типе рождение;
# 			

class FullCitizenMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'FullCitizen'

  # Признак "Является ли инициатор отправки заявления владельцем личного кабинета"
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_private_office_owner
  # Признак "Является ли Заявителем"
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_applicant
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
  # Семейное положение
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :marital_status
  # СНИЛС
  # @return [SNILS]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :snils
  # Контактный телефон
  # @return [PHONE]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :phone_number
  # Рабочий номер телефона
  # @return [PHONE]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :work_phone_number
  # Докумен, удостоверяющий личность
  # @return [IdentityDocumentMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :identity_document

end
