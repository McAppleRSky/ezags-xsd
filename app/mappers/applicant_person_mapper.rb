# encoding: utf-8
# @note Сведения о человеке в объеме "Заявитель ФЛ"
# 				Сведения о заявителе - представителе физического лица
# 				Сведения о человеке (№ - услуга, * - роль в услуге):
# 				1) Расторжение брака:
# 				* УПФЛ в типах 2.
# 				2) Смерть:
# 				* УПФЛ;
# 				3) Внесение изменений:
# 				* УПФЛ;
# 				4) Рождение:
# 				* УПФЛ для устуги в типах 1,2,5,6;
# 				* свидетель рождения для устуги в типах 1,2,4,5.
# 				5) Повторная выдача:
# 				* УПФЛ;
# 				6) Установление отцовства:
# 				* УПФЛ для услуги в типе 3.
# 			

class ApplicantPersonMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ApplicantPerson'

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
  # Место жительства
  # @return [FullAddressMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :residence_place
  # Почтовый адрес
  # @return [FullAddressMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :postal_address
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
  # Доверенность ФЛ
  # @return [PowerOfAttorneyMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :power_of_attorney
  # Доверенность ЮЛ
  # @return [PowerOfAttorneyLegalMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :power_of_attorney_legal

end
