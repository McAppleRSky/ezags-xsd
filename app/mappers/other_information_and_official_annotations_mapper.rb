# encoding: utf-8

class OtherInformationAndOfficialAnnotationsMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'OtherInformationAndOfficialAnnotations'

  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :other_information_and_official_annotations_item

end
