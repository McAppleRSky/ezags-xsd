# encoding: utf-8
# @note Прочие заявители при расторжении брака

class OtherApplicantsForAdoptionMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'OtherApplicantsForAdoption'

  # @return [ApplicantOrganizationMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :applicant_organization
  # @return [ApplicantPersonMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :applicant_person
  # Сведения о заявителе - физическом лице с ЕЕ стороны (иное уполнеомоченное лицо)
  # @return [ApplicantPersonMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :her_plenipotentiary
  # Сведения о заявителе - физическом лице с ЕГО стороны (иное уполнеомоченное лицо)
  # @return [ApplicantPersonMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :his_plenipotentiary

end
