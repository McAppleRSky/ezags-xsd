# encoding: utf-8
# @note Актовая запись о смерти

class ActRecordContentOfDeathMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ActRecordContentOfDeath'

  # Возможные причины смерти (по медицинскому свидетельству о смерти или о перинатальной смерти)
  # @return [GroupOfCausesOfDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :group_of_causes_of_death
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
  # Возраст матери
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :mother_age
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
  # Код Смерть наступила по классификатору Росстата
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :death_placed_at
  # Код Смерть произошла по классификатору Росстата
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :cause_of_death
  # Смерть произошла - строковое представление
  # @return [STRING250]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :cause_of_death_string
  # Код Смерть в результате ДТП по классификатору Росстата
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :death_period_road_accident
  # Код Причина смерти установлена по классификатору Росстата
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :who_registered_death

end
