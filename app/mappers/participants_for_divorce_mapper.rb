# encoding: utf-8
# @note Участники расторжения брака

class ParticipantsForDivorceMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
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
