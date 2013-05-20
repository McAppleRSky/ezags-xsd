# encoding: utf-8
# @note Документ установленной формы о рождении (наличие возможно при регистрации перинатальной смерти ребенка одним из родителей)

class DocumentsConfirmingPerinatalDeathMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DocumentsConfirmingPerinatalDeath'

  # Документ установленной формы о рождении, выданный медицинской организацией, в которой происходили роды
  # @return [MedicalCertificateOfBirthByOrganizationMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :medical_certificate_of_birth_by_organization
  # Документ установленной формы о рождении, выданный медицинской организацией, врач которой оказывал медицинскую помощь при родах или в которую обратилась мать после родов, либо частнопрактикующим врачом (при родах вне медицинской организации)
  # @return [MedicalCertificateOfBirthByPrivatePractitionerMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :medical_certificate_of_birth_by_private_practitioner

end
