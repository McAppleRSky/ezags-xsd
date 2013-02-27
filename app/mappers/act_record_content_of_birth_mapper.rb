# encoding: utf-8
# @note Дополнительное содержимое акта о рождении

class ActRecordContentOfBirthMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ActRecordContentOfBirth'

  # живорожденный или мертворожденный
  # @return [BIRTHStatuses]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :birth_status
  # Признак "ребенок умер на первой неделе жизни"
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_died_in_week
  # Количество родившихся детей
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :number_of_births
  # Порядковый номер ребенка в семье
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :number_child_in_family
  # Масса тела ребенка при рождении.
  #                 Заполняется из медицинского свидетельства о рождении - пункт 16, при мертворождении -
  #                 пункт 17 медицинского свидетельства о перинатальной смерти, указывается в граммах.
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :child_weight
  # Код Образования по классификатору Росстата
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :education
  # Образование - строковое представление
  # @return [STRING250]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :education_string
  # Код Занятость по классификатору Росстата
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :occupation

end
