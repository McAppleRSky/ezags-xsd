# encoding: utf-8
# @note Справка о рождении формы 24

class ReferenceBirth24Mapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ReferenceBirth24'

  # @return [RequisitesPaperReferenceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_reference
  # @return [ActRecordToReferenceBirth24Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference_birth24

end
