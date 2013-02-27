# encoding: utf-8
# @note Справка о рождении формы 26

class ReferenceBirth26Mapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ReferenceBirth26'

  # @return [RequisitesPaperReferenceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_reference
  # @return [ActRecordToReferenceBirth26Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference_birth26

end
