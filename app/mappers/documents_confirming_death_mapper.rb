# encoding: utf-8
# @note Документы, подтверждающие факт смерти

class DocumentsConfirmingDeathMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DocumentsConfirmingDeath'

  # Документ установленной формы о смерти, выданный мед. организацией
  # @return [MedicalCertificateOfDeathByOrganizationMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_death_by_organization
  # Документ установленной формы о смерти, выданный частнопрактикующим врачом
  # @return [MedicalCertificateOfDeathByPrivatePractitionerMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_death_by_private_practitioner
  # Решение суда  (при регистрации смерти)
  # @return [CourtActDecisionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :court_decision_of_death
  # Документ о перинатальной смерти, выданный мед. организацией
  # @return [MedicalCertificateOfDeathByOrganizationMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_perinatal_death_by_organization
  # Документ о перинатальной смерти, выданный частнопрактикующим врачем
  # @return [MedicalCertificateOfDeathByPrivatePractitionerMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_perinatal_death_by_private_practitioner
  # Документ о факте смерти необоснованно репрессированного лица
  # @return [RequisitesPaperDocumentSimpleMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_death_unjustly_repressed

end
