# encoding: utf-8
# @note Сведения о неизвестном умершем
# 				Сведения о человеке (№ - услуга, * - роль в услуге):
# 				1) Смерть:
# 				* умерший неизвестный.
# 			

class DeadPersonUnknownMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DeadPersonUnknown'

  # Дата рождения
  # @return [DateAgileMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :birth_date
  # Дата смерти
  # @return [DateAgileMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :death_date

end
