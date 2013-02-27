# encoding: utf-8
# @note Участники расторжения брака

class ParticipantsForDivorceMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ParticipantsForDivorce'

  # Сведения о НЕМ (до расторжения брака)
  # @return [FullCitizenMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :husband
  # Сведения о НЕЙ (до расторжения брака)
  # @return [FullCitizenMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :wife

end
