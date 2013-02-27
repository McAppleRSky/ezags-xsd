# encoding: utf-8
# @note Сведения о Юридическом лице

class ApplicantOrganizationMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ApplicantOrganization'

  # Наименование организации
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :organization_name
  # Юридический адрес
  # @return [FullAddressMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :legal_address
  # Должность
  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :position
  # Почтовый адрес
  # @return [FullAddressMapper]
  # minOccurs: 0, maxOccurs: 1
  attr_accessor :postal_address
  # @return [JuridicalAuthorisedRepresentativeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :juridical_authorised_representative

end
