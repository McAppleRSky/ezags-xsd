# encoding: utf-8
# @note Дополнительное содержимое акта о браке

class ActRecordContentOfMarriageMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ActRecordContentOfMarriage'

  # Фамилия мужа (после регистрации акта: брака или развода)
  # @return [STRING60]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :new_last_name_of_husb
  # Фамилия жены (после после регистрации акта: брака или развода)
  # @return [STRING60]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :new_last_name_of_wife
  # Кол-во ЕГО полных лет на момент заключения брака
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :groom_age
  # Кол-во ЕЕ полных на момент заключения брака
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :bride_age
  # Число общих детей до 18 лет. Заполняется цифрами.
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :number_of_juvenile_children

end
