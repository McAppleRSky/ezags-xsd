# encoding: utf-8
# @note Дополнительное содержимое заявления подаваемого в электронном виде для регистрации услуги рождения

class StatementContentOfBirthMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'StatementContentOfBirth'

  # живорожденный или мертворожденный
  # @return [BIRTHStatuses]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :birth_status
  # Признак "ребенок умер на первой неделе жизни"
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :is_died_in_week
  # Который по счету родился
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :number_child_in_birth
  # Количество родившихся детей
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :number_of_births
  # Порядковый номер ребенка в семье
  # @return [Int]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :number_child_in_family
  # Признак "Родители воспользовались услугами суррогатной матери"
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :has_surrogate_mother
  # Ребенка нашли?
  # @return [Boolean]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :is_child_found
  # От ребенка отказались?
  # @return [Boolean]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :is_child_refusal
  # Указывать ли в акте национальность отца
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :specify_nationality_of_father
  # Указывать ли в акте национальность матери
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :specify_nationality_of_mother
  # Время рождения (в т.ч. ребенка, умершего на 1-ой неделе жизни)
  # @return [TIME]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :birth_time
  # Отцовство установленно?
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :was_filiation_established
  # Дата заявления одинокой матери
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :lonely_mother_statement_date
  # Дата обнаружения ребенка
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :finding_date
  # Время обнаружения ребенка
  # @return [TIME]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :finding_time
  # Место обнаружения ребенка
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :finding_place
  # Обстоятельства обнаружения ребенка
  # @return [NOTEmptyString]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :finding_circumstances
  # Дата оставления ребенка
  # @return [Date]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :refusal_date
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
  # Признак согласия отца ребенка на установление отцовства одновременно с регистрацией рождения
  # @return [Boolean]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :filliation_agree_by_father

end
