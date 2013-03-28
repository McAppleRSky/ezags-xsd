# encoding: utf-8

class GetActRecordsRequestMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/retro/GetResultsService.xsd', File.dirname(__FILE__))
  type 'GetActRecordsRequest'

  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :task_id
  # @return [SignatureTypeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :signature

end
