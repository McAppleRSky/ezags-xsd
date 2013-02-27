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
  # Список сотрудников
  # @return [ListOfRegistrarEmployeesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :employees
  # Руководитель органа ЗАГС, удостоверяющий своей подписью сведения
  # @return [RegistrarEmployeeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :head_of_zags
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
  # Место хранения актовых аписей после закрытия ЗАГСа
  # @return [RegistrarUID]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :registrar_arch_uid
  # Список видов заявлений, принимаемых органом ЗАГС в электронном виде
  # @return [ListOfServiceTypesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :service_types
  # Временная метка, в виде time stamp, используемая в качестве версии
  # @return [TIMEStampVersion]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :version

end
