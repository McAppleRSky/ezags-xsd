# encoding: utf-8
# @note Прочие заявители при расторжении брака

class OtherApplicantsForDivorceMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'OtherApplicantsForDivorce'

  # Сведения о заявителе - юридическом лице (в лице его уполномоченного представителя - сотрудника)
  # @return [ApplicantOrganizationMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :applicant_organization
  # Сведения о заявителе - физическом лице (иное уполномоченное лицо)
  # @return [ApplicantPersonMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :applicant_person
  # Сведения о заявителе - физическом лице с ЕЕ стороны (иное уполнеомоченное лицо)
  # @return [ApplicantPersonMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :applicant_of_wife
  # Сведения о заявителе - физическом лице с ЕГО стороны (иное уполнеомоченное лицо)
  # @return [ApplicantPersonMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :applicant_of_husband

end
