# encoding: utf-8
# @note Документы, подтверждающие факт рождения ребенка

class DocumentsConfirmingBirthMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DocumentsConfirmingBirth'

  # Документ установленной формы о рождении, выданный медицинской организацией, в которой происходили роды
  # @return [MedicalCertificateOfBirthByOrganizationMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_birth_by_organization
  # Документ установленной формы о рождении, выданный медицинской организацией, врач которой оказывал медицинскую помощь при родах или в которую обратилась мать после родов, либо частнопрактикующим врачом (при родах вне медицинской организации)
  # @return [MedicalCertificateOfBirthByPrivatePractitionerMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_birth_by_private_practitioner
  # Документ, выданный медицинской организацией и подтверждающий факт получения согласия женщины, родившей ребенка (суррогатной матери), на запись супругов, давших согласие на имплантацию эмбриона другой женщине в целях его вынашивания, родителями ребенка
  # @return [MedicalCertificateOfSurrogateMotherAgreeMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_surrogate_mother_agree
  # Документ установленной формы о перинатальной смерти, выданный медицинской организацией
  # @return [MedicalCertificateOfDeathByOrganizationMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_perinatal_death_by_organization
  # Документ установленной формы о перинатальной смерти, выданный частнопрактикующим врачом
  # @return [MedicalCertificateOfDeathByPrivatePractitionerMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :medical_certificate_of_perinatal_death_by_private_practitioner
  # Заявление лица, присутствовавшего во время родов, о рождении ребенка - при родах вне медицинской организации и без оказания медицинской помощи (до исполнения ребенком одного года)
  # @return [RequisitesStatementOfPersonAttentedAtBirthMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :requisites_statement_of_person_attented_at_birth
  # Решение суда об установлении факта рождения
  # @return [CourtActDecisionMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :court_decision_of_birth
  # Документ об обнаружении ребенка, выданный органом внутренних дел или органом опеки и попечительства (при регистрации рождения найденного (подкинутого) ребенка)
  # @return [RequisitesPaperDocumentMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_about_finding_child
  # Акт об оставлении ребенка, выданный медицинской организацией, в которой находится этот ребенок (при регистрации рождения ребенка, оставленного матерью)
  # @return [RequisitesPaperDocumentMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_about_refusal_child
  # Документ, выданный медицинской организацией и подтверждающий возраст и пол ребенка (при регистрации рождения найденного (подкинутого) ребенка)
  # @return [RequisitesPaperDocumentMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :document_proof_child_gender_and_age

end
