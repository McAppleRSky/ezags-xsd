# encoding: utf-8
# @note Уполномоченный представитель ЮЛ
# 				Сведения о человеке (№ - услуга, * - роль в услуге):
# 				1) Перемена имени:
# 				* УПФЛ;
# 				* УПЮЛ;
# 				2) Внесение изменений:
# 				* УПЮЛ;
# 				3) Рождение:
# 				* УПЮЛ для устуги в типах 3,4,5;
# 				4) Смерть:
# 				* УПЮЛ;
# 				5) Усыновление:
# 				* УПФЛ;
# 				6) Расторжение брака:
# 				* УПФЛ 1,3;
# 				7) Повторная выдача:
# 				* УПЮЛ.
# 			

class JuridicalAuthorisedRepresentativeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'JuridicalAuthorisedRepresentative'

  # Признак "Является ли инициатор отправки заявления владельцем личного кабинета"
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_private_office_owner
  # Признак "Является ли Заявителем"
  # @return [Boolean]
  # minOccurs: 1, maxOccurs: 1
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
  # Докумен, удостоверяющий личность
  # @return [IdentityDocumentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :identity_document
  # Доверенность ЮЛ
  # @return [PowerOfAttorneyLegalMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :power_of_attorney_legal

end
