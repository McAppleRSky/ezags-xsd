# encoding: utf-8
# @note е-Заявление о рождении ребенка

class StatementOfBirthMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'StatementOfBirth'

  # @return [StatementRequisitesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :statement_requisites
  # @return [StatementContentOfBirthMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :statement_content
  # @return [ParticipantsForBirthMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :participants
  # @return [DocumentsConfirmingBirthMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :documents_confirming_birth
  # @return [DocumentsConfirmingFiliationForBirthStmtMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :documents_confirming_participant
  # @return [OtherApplicantsMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :other_applicants

end
