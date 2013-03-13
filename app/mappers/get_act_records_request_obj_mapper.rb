# encoding: utf-8

class GetActRecordsRequestObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/retro/public/GetResultsService.xsd', File.dirname(__FILE__))
  type 'GetActRecordsRequestObj'

  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :task_id

end
