# encoding: utf-8
# @note Документы, подтверждающие факт рождения ребенка

class DocumentsConfirmingBirthMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DocumentsConfirmingBirth'

  # @return [MedicalCertificateOfBirthByOrganizationMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_birth_by_organization
  # @return [MedicalCertificateOfBirthByPrivatePractitionerMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_birth_by_private_practitioner
  # @return [MedicalCertificateOfSurrogateMotherAgreeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_surrogate_mother_agree
  # Документ о перинатальной смерти, выданный мед. организацией
  # @return [MedicalCertificateOfDeathByOrganizationMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_perinatal_death_by_organization
  # Документ о перинатальной смерти, выданный частнопрактикующим врачем
  # @return [MedicalCertificateOfDeathByPrivatePractitionerMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_perinatal_death_by_private_practitioner
  # @return [RequisitesStatementOfPersonAttentedAtBirthMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :requisites_statement_of_person_attented_at_birth
  # @return [CourtActDecisionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :court_decision_of_birth
  # Документ об обнаружении ребенка
  # @return [RequisitesPaperDocumentMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_about_finding_child
  # Документ об остановлении ребенка в родильном доме (отделении) или ином лечебно-профилактическом учреждении
  # @return [RequisitesPaperDocumentMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_about_refusal_child
  # Документ, подтверждающий пол и возраст ребенка 
  # @return [RequisitesPaperDocumentMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_proof_child_gender_and_age

end
