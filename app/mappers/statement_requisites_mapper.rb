# encoding: utf-8
# @note Реквизиты заявлений в электронном виде

class StatementRequisitesMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'StatementRequisites'

  # Код органа ЗАГС, составившего документ (из внешнего справочника на ЕНСИ)
  # @return [RegistrarUID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :registrar_id
  # Идентификатор услуги в ЕПГУ
  # @return [UID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :pgu_id
  # Идентификатор услуги в еЗАГС
  # @return [UID]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :ezags_id
  # Дата заявления
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_date
  # Номер заявления, присвоенный в рЗАГС
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :registration_number_in_registar
  # Номер формы бумажного заявления на регистрацию смерти
  # @return [STATEMENTBlankType]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :blank

end
