# encoding: utf-8
# @note Прочие заявители

class OtherApplicantsMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'OtherApplicants'

  # @return [ApplicantOrganizationMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :applicant_organization
  # @return [ApplicantPersonMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :applicant_person

end
