# encoding: utf-8
# @note Сведения о ребёнке (№ - услуга, * - роль в услуге):
# 				1) Рождение:
# 				* ребенок для устуги в типах 1,2,3,4,5;
# 				2) Установление отцовства:
# 				* ребенок для услуги в типах 1,2,3;
# 				3) Усыновление:
# 				* ребенок.
# 			

class ChildMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'Child'

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
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :birth_date
  # Место рождения
  # @return [ShortAddressMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :birth_place

end
