# encoding: utf-8
# @note Сведения о месте государственной регистрации

class NsiRegistrarMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'NSIRegistrar'

  # Код органа ЗАГС, составившего документ (из внешнего справочника на ЕНСИ)
  # @return [RegistrarUID]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :registrar_id
  # Код региона
  # @return [REGIONCode]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :region_code
  # Идентификатор ЗАГС в сети региона
  # @return [REGIONRegistrarId]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :region_zags_id
  # Полное наименование
  # @return [STRING250]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :full_name
  # Краткое наименование
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :short_name
  # адрес в первоначальном виде (как записан в документе). Только для визуальной верификации сотрудником ЗАГС!
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :raw_address_string
  # Код ОКТМО
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :oktmo
  # Дата начала работы ЗАГСа
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :date_begin
  # Дата закрытия ЗАГСа
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :date_close

end
