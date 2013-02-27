# encoding: utf-8
# @note Справка об установлении отцовства формы 31

class ReferenceFiliation31Mapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'ReferenceFiliation31'

  # @return [RequisitesPaperReferenceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :requisites_paper_reference
  # @return [ActRecordToReferenceFiliation31Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :reference_filiation31

end
