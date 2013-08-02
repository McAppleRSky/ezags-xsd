# encoding: utf-8
# @note Сведения о месте государственной регистрации

class RegistrarMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'Registrar'

  # Код органа ЗАГС, составившего документ (из внешнего справочника на ЕНСИ)
  # @return [RegistrarUID]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :registrar_id
  # Идентификационные данные места государственной регистрации. Внешний ключ
  # @return [RegistrarIdentityMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :foreign_id
  # Полное наименование
  # @return [STRING250]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :full_name
  # Краткое наименование
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :short_name
  # Юридический адрес
  # @return [FullAddressMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :legal_address
  # Количество сотрудников органа ЗАГС
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :employee_count
  # ФИО руководителя органа ЗАГС
  # @return [STRING250]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :head_of_zags_fio
  # Должность руководителя органа ЗАГС
  # @return [STRING500]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :head_of_zags_position
  # Код ОКТМО
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :oktmo
  # Дата начала действия версии сведений оЗАСГ
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :date_begin
  # Место хранения актовых аписей после закрытия ЗАГСа
  # @return [RegistrarUID]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :registrar_arch_uid
  # Список видов заявлений, принимаемых органом ЗАГС в электронном виде
  # @return [ListOfServiceTypesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :service_types
  # Номер телефона ЗАГСа
  # @return [STRING200]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :phone_number
  # Режим работы ЗАГСа
  # @return [STRING500]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :working_time
  # Временная метка, в виде time stamp, используемая в качестве версии
  # @return [TIMEStampVersion]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :version

end
