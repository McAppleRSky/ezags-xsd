# encoding: utf-8
# @note Актовая запись о разводе

class ActRecordContentOfDivorceMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ActRecordContentOfDivorce'

  # Дата прекращения брака
  # @return [DateAgileMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :divorce_date
  # ЕГО фамилия после регистрации АГС (заключения брака или расторжения брака)
  # @return [STRING60]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :new_last_name_of_husb
  # ЕЕ фамилия после регистрации АГС (заключения брака или расторжения брака)
  # @return [STRING60]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :new_last_name_of_wife
  # Число общих детей до 18 лет. Заполняется цифрами.
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :number_of_juvenile_children

end
