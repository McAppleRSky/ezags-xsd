# encoding: utf-8
# @note Сведения о человеке (максимальный набор)

class FullPersonMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'FullPerson'

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
  # Почтовый адрес
  # @return [FullAddressMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :postal_address
  # Семейное положение
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :marital_status
  # СНИЛС
  # @return [SNILS]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :snils
  # Жив или мертв
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :alive
  # Дата смерти
  # @return [DateAgileMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :death_date
  # Место смерти
  # @return [ShortAddressMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :death_place
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
