# encoding: utf-8
# @note Возможные причины смерти (по медицинскому свидетельству о смерти или о перинатальной смерти)

class GroupOfCausesOfDeathMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'GroupOfCausesOfDeath'

  # Причина смерти согласно графе «а» медицинского свидетельства о смерти или о перинатальной смерти
  # @return [CauseOfDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :a
  # Причина смерти согласно графе «б» медицинского свидетельства о смерти или о перинатальной смерти
  # @return [CauseOfDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :b
  # Причина смерти согласно графе «в» медицинского свидетельства о смерти или о перинатальной смерти
  # @return [CauseOfDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :c
  # Причина смерти согласно графе «г» медицинского свидетельства о смерти или о перинатальной смерти
  # @return [CauseOfDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :d
  # Причина смерти согласно графе «д» медицинского свидетельства о перинатальной смерти
  # @return [CauseOfDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :e
  # Причина смерти согласно графе «II» медицинского свидетельства о смерти
  # @return [CauseOfDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :ii
  # @return [CauseOfDeathMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :other_death_reason

end
