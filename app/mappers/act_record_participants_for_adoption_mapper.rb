# encoding: utf-8
# @note Участники усыновления (для АЗ и е-Заявления)

class ActRecordParticipantsForAdoptionMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ActRecordParticipantsForAdoption'

  # Сведения о ребёнке (до усыновления)
  # @return [ChildMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :child_before
  # Сведения о ребёнке (после усыновления)
  # @return [ChildMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :child_after
  # Сведения об отце ребенка (в объеме "Гражданин")
  # @return [CitizenMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :father
  # Сведения о матери ребенка (в объеме "Гражданин")
  # @return [CitizenMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :mother
  # Сведения о усыновителе (в максимальном объеме)
  # @return [CitizenWithoutIdentDocMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :adoptive_father
  # Сведения об усыновительнице (в максимальном объеме)
  # @return [CitizenWithoutIdentDocMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :adoptive_mother

end
