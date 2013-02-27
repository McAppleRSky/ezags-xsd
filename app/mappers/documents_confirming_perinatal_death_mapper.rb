# encoding: utf-8
# @note Документ установленной формы о рождении (наличие возможно при регистрации перинатальной смерти ребенка одним из родителей)

class DocumentsConfirmingPerinatalDeathMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DocumentsConfirmingPerinatalDeath'

  # @return [MedicalCertificateOfBirthByOrganizationMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :medical_certificate_of_birth_by_organization
  # @return [MedicalCertificateOfBirthByPrivatePractitionerMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :medical_certificate_of_birth_by_private_practitioner

end
