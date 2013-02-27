# encoding: utf-8
# @note Справка об усыновлении (удочерении) формы 30

class ReferenceAdoption30Mapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ReferenceAdoption30'

  # @return [RequisitesPaperReferenceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_reference
  # @return [ActRecordToReferenceAdoption30Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference_adoption30

end
