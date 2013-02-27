# encoding: utf-8

class OtherInformationAndOfficialAnnotationsMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'OtherInformationAndOfficialAnnotations'

  # @return [NOTEmptyString]
  # minOccurs: 1, maxOccurs: Infinity
  attr_accessor :other_information_and_official_annotations_item

end
