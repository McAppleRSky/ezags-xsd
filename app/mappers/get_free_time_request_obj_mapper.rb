# encoding: utf-8

class GetFreeTimeRequestObjMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/OrderService.xsd'
  type 'GetFreeTimeRequestObj'

  # Код органа ЗАГС, составившего документ (из внешнего справочника на ЕНСИ)
  # @return [RegistrarUID]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :registrar_id
  # Желаемые дата регистрации брака
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :desired_registraton_date

end
