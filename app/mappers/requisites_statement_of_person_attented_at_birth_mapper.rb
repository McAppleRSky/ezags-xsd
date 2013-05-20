# encoding: utf-8
# @note Сведения о заявлении лица, присутствовавшего во время родов, в записи акта о рождении
# 			

class RequisitesStatementOfPersonAttentedAtBirthMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'RequisitesStatementOfPersonAttentedAtBirth'

  # Дата заявления
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :statement_date
  # Сведения о лице, присутствовавшем во время родов
  # @return [ApplicantPersonMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :person_attented_at_birth
  # Наименование организации
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :organization_name
  # Адрес организации, выдавшей документ
  # @return [FullAddressMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :organization_address
  # Дата удостоверения подписи
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :auth_date
  # Способ поступления заявления
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :proceed_method

end
