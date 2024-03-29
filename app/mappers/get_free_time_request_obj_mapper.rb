# encoding: utf-8

class GetFreeTimeRequestObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
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
