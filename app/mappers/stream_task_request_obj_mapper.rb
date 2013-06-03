# encoding: utf-8

class StreamTaskRequestObjMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/retro/StreamTaskService.xsd', File.dirname(__FILE__))
  type 'StreamTaskRequestObj'

  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :task_name
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :document_type
  # @return [String]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :operators_count
  # @return [ImagesMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :images

  class Images
    include XmlSchemaMapper
    schema File.expand_path('../../vendor/ezags-protocols/retro/StreamTaskService.xsd', File.dirname(__FILE__))
    annonymus_type 'StreamTaskRequestObj::Images'

    # @return [Base64Binary]
    # minOccurs: 1, maxOccurs: 1
    attr_accessor :image
  end

end
