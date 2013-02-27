# encoding: utf-8
# @note Участники расторжения брака (для АЗ и е-Заявления)

class ActRecordParticipantsForDivorceMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ActRecordParticipantsForDivorce'

  # Сведения о НЕМ (до расторжения брака)
  # @return [FullCitizenMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :husband
  # Сведения о НЕЙ (до расторжения брака)
  # @return [FullCitizenMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :wife

end
