# encoding: utf-8

class StreamTaskResponseObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/retro/StreamTaskService.xsd', File.dirname(__FILE__))
  type 'StreamTaskResponseObj'

  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :task_id

end
