# encoding: utf-8
# @note Заявление о смерти, подаваемое в электронном виде

class StatementContentOfDeathMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'StatementContentOfDeath'

  # Установленна ли личность умершего?
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :was_dead_person_established
  # Возможные причины смерти (по медицинскому свидетельству о смерти или о перинатальной
  # 				смерти)
  # @return [GroupOfCausesOfDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :group_of_causes_of_death
  # Признак перинатальной смерти субъекта заявления
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_parietal_death
  # Отношение к умершему (справочник еЗАГС)
  # @return [CONNECTIONWithDead]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :connection_with_dead
  # Время рождения (в т.ч. ребенка, умершего на 1-ой неделе жизни)
  # @return [TIME]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :birth_time
  # Время смерти ребенка, умершего на 1-ой неделе жизни
  # @return [TIME]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :death_time
  # Реквизиты АЗ о рождении умершего ребенка (до 14 лет), заполняется при наличии у ребенка свидетельства о рождении
  # @return [OldActRecordRequisitesMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :act_rec_birth_reqs
  # Данные о матери умершего ребенка, заполняются только в отношении ребенка, умершего в возрасте до 1 года (в т.ч. и на 1-й неделе жизни)
  # @return [CitizenWithoutIdentDocMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :mother_of_dead_child
  # Число детей, родившихся у матери умершего ребенка при последних родах  (с ЕПГУ получаем id, значение id соответствует числу)
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :amount_child
  # Который по счету ребенок из родившихся умер (с ЕПГУ получаем id, значение id соответствует числу)
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :number_child
  # Порядковый номер ребенка в семье
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :number_child_in_family
  # Масса тела ребенка при рождении.
  # 				Заполняется из медицинского свидетельства о рождении - пункт 16, при мертворождении -
  # 				пункт 17 медицинского свидетельства о перинатальной смерти, указывается в граммах.
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
  # @return [DEATHPlace]
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
  # Код Смерть в результате ДТП (для Росстата)
  # @return [DEATHPeriodRoadAccident]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :death_period_road_accident
  # Код Причина смерти установлена по классификатору Росстата
  # @return [WHORegisteredDeath]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :who_registered_death

end
