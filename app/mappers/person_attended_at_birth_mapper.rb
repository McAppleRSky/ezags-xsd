# encoding: utf-8
# @note Сведения о человеке в объеме "Лицо, присутствовавшее во время родов"

class PersonAttendedAtBirthMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'PersonAttendedAtBirth'

  # Признак "Является ли инициатор отправки заявления владельцем личного кабинета"
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_private_office_owner
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
  # СНИЛС
  # @return [SNILS]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :snils
  # Контактный телефон
  # @return [PHONE]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :phone_number
  # Докумен, удостоверяющий личность
  # @return [IdentityDocumentMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :identity_document

end
