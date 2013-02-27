# encoding: utf-8
# @note Участники рождения

class ParticipantsForBirthMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ParticipantsForBirth'

  # Сведения о ребёнке
  # @return [ChildMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :child
  # Сведения об отце (в максимальном объеме)
  # @return [FullCitizenMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :father
  # Сведения о матери (в максимальном объеме)
  # @return [FullCitizenMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :mother

end
